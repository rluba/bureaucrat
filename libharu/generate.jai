AT_COMPILE_TIME :: true;

COMPILE       :: false; // Enable to compile the libharu library from source before generating bindings.
COMPILE_DEBUG :: false; // Compile a debug or release version of libharu? @ToDo: THIS DOESN’T WORK FOR THE DYNAMIC LIBRARY – at least on macOS. So you need to delete the dynamic library and only link against the static one if you want to see debug information.

LIBHARU_PATH :: "libharu_source";

DECLARATIONS_TO_OMIT :: string.[
];

#if AT_COMPILE_TIME {
    #run {
        set_build_options_dc(.{do_output=false});
        if !generate_bindings() {
            compiler_set_workspace_status(.FAILED);
        }
    }
} else {
    #import "System";

    main :: () {
        set_working_directory(path_strip_filename(get_path_of_running_executable()));
        if !generate_bindings() {
            exit(1);
        }
    }
}

generate_bindings :: () -> bool {
    #if COMPILE {
		success := build_libharu();
		if !success return false;
	}

    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

		#if OS == .LINUX {
			array_add(*libpaths, "linux");
		} else #if OS == .MACOS {
			array_add(*libpaths, "macos");
		} else {
			assert(false);
		}
		output_filename = "unix.jai";
		generate_library_declarations = false;
		footer = FOOTER_UNIX;

		libharu_include_path := tprint("%/include", PLATFORM_NAME);
        array_add(*libpaths,      tprint("%/lib", PLATFORM_NAME));
        array_add(*libnames,      "libhpdf");
        array_add(*include_paths, libharu_include_path);
        array_add(*source_files,  tprint("%/hpdf.h", libharu_include_path));
        array_add(*strip_prefixes, "HPDF");

        log_stripped_declarations           = true;
        generate_compile_time_struct_checks = false;
        alias_original_enum_names           = false;
        array_add(*generate_enums_from_macros_with_prefixes,
            "HPDF_ENABLE",
            "HPDF_COMP",
            "HPDF_GMODE",
            "HPDF_STREAM_FILTER",
            "HPDF_OTYPE",
            "HPDF_OCLASS",
            "HPDF_OSUBCLASS",
            // "HPDF_FONT", // Unfortunately pulls in some error codes
        );


        visitor   = libharu_visitor;
    }

    return generate_bindings(opts, output_filename);
}

#if OS == .LINUX {
    PLATFORM_NAME :: "linux";
} else #if OS == .MACOS {
    PLATFORM_NAME :: "macos";
} else {
    compiler_report(tprint("Unsupported platform: %", OS));
}

build_libharu :: () -> bool {
	install_dir := PLATFORM_NAME;
    success := make_directory_if_it_does_not_exist(install_dir);
    if !success {
        log_error("Could not create directory \"%\"\n", install_dir);
		return false;
    }

    success = build_libharu("dynamic library", .[], install_dir);
    if !success return false;
    success = build_libharu("static library", .["-DBUILD_SHARED_LIBS=OFF"], install_dir);
    if !success return false;
    return true;
}

build_libharu :: (variant_name: string, config_args: [] string, install_dir: string) -> bool {
	absolute_install_dir := get_absolute_path(install_dir);
	assert(absolute_install_dir != "");

    absolute_build_dir := join(absolute_install_dir, "_build");
    log("Configuring libharu %... \"%\" -> \"%\"", variant_name, absolute_build_dir, absolute_install_dir);
	if file_exists(absolute_build_dir) {
		success := delete_directory(absolute_build_dir);
		if !success {
			log_error("Could not delete old build directory");
			return false;
		}
	}
    success := make_directory_if_it_does_not_exist(absolute_build_dir);
    if !success {
        log_error("Could not create directory \"%\"\n", absolute_build_dir);
		return false;
    }

	absolute_libharu_path := get_absolute_path(LIBHARU_PATH);
    config_command: [..] string;
    array_add(*config_command,
		"cmake",
		absolute_libharu_path,
        tprint("-DCMAKE_INSTALL_PREFIX=%", absolute_install_dir),
        tprint("-DCMAKE_PREFIX_PATH=%",    install_dir),
	);
    array_add(*config_command, ..config_args);

    if COMPILE_DEBUG {
        array_add(*config_command, "-DCMAKE_BUILD_TYPE=Debug", "-DLIBHPDF_DEBUG=ON");
    }

    #if OS == .MACOS {
        using options := get_build_options();
        array_add(*config_command, tprint("-DCMAKE_OSX_DEPLOYMENT_TARGET=%.%", minimum_os_version.major, minimum_os_version.minor));
    }
    run_or_exit(..config_command, working_directory = absolute_build_dir);
    log("Done configuring libharu %", variant_name);

    log("Building libharu %…", variant_name);
    build_command: [..] string;
    array_add(*build_command, "cmake", "--build", absolute_build_dir, "--target", "install");
    run_or_exit(..build_command);
	log("Done building libharu %", variant_name);

	return true;
}

run_or_exit :: (command: .. string, working_directory := "") -> string {
    // Enable this to see the commands being executed.
    // Might be useful if, for example, you need to compile LLVM on a platform where we don’t have a Jai compiler yet and want to do it manually.
    // log("Executing command \"%\" in directory \"%\"\n", join(..command, separator = " "), working_directory);

    result, output_string, error_string := run_command(..command, working_directory = working_directory, capture_and_return_output = true, print_captured_output = true);
    defer {
        free(error_string);
    }
    if result.exit_code != 0 {
        log_error("Could not run command \"%\" in directory \"%\". Exit code: %\nError:\n%", get_quoted_command_string(command), working_directory, result.exit_code, error_string);
        // if !LIVE_OUTPUT {
        //     log_error("Output:\n%", output_string);
        // }
        exit(1);
    }
    return output_string;
}


libharu_visitor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
    if !parent_decl {
        if array_find(DECLARATIONS_TO_OMIT, decl.name) {
            decl.decl_flags |= .OMIT_FROM_OUTPUT;
            return .STOP;
        }

		if (begins_with(decl.name, "HPDF_COUNTRY_") || begins_with(decl.name, "HPDF_LANG_")) {
			decl.decl_flags |= .OMIT_FROM_OUTPUT;
			return .STOP;
		}

        if decl.kind == .TYPEDEF {
			inner_name := tprint("_%", decl.name);
			for context.generator.global_scope.members {
				if it.name != inner_name     continue;

				// Don't output the typedef
				decl.decl_flags |= .OMIT_FROM_OUTPUT;

				// Keep the comment, if there is one:
				if decl.comment.text && !it.comment.text {
					it.comment = decl.comment;
				}

				it.output_name = decl.output_name;
				break;
			}
        }

        if decl.kind == .ENUM {
            _enum := cast(*Enum) decl;
            if decl.output_name == {
                case "COMP"; #through;
                case "ENABLE"; #through;
                case "GMODE"; #through;
                case "STREAM_FILTER"; #through;
                case "OTYPE";
                    _enum.flags |= .IS_ENUM_FLAGS;
                    _enum.flags |= .VALUES_IN_HEX;
            }
        }

    }

    return .RECURSE;
}

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";
#import "File_Utilities";
#import "String";
#import "Process";

FOOTER_UNIX :: #string END

#if OS == .MACOS    libhpdf :: #library,no_dll "macos/lib/libhpdf";
#if OS == .LINUX    libhpdf :: #library,no_dll "linux/lib/libhpdf";

zlib   :: #system_library "libz";   // Needed by libhpdf
libpng :: #system_library "libpng"; // Needed to load PNGs with libhpdf

END

