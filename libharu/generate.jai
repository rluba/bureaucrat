AT_COMPILE_TIME :: true;

COMPILE       :: false; // Enable to compile the libharu library from source before generating bindings.
// COMPILE_DEBUG :: false; // Compile a debug or release version of libharu?

// We don’t ship the libharu source with this module. Download a libharui release and update this path if you want to re-generate the bindings.
LIBHARU_PATH :: "libharu-2.4.4";

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
        // auto_detect_enum_prefixes = false;
        log_stripped_declarations = true;
        generate_compile_time_struct_checks = true;
        // strip_flags |= .INLINED_FUNCTIONS; // "inline" functions are not present in the static library.

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

	absolute_install_dir := get_absolute_path(install_dir);
	assert(absolute_install_dir != "");
    absolute_build_dir := join(absolute_install_dir, "_build");
    log("Configuring libharu... \"%\" -> \"%\"", absolute_build_dir, absolute_install_dir);
    success = make_directory_if_it_does_not_exist(absolute_build_dir);
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

    #if OS == .MACOS {
        // I thought that we need to specify the architecture on macOS to avoid getting an arm build on a M1 machine.
        // But for some reason this cmake build builds for x64 by default. That’s what we want for now,
        // but if it ever changes, we should be able to control it via this variable:
        //  -rluba, 2022-06-13
        // array_add(*config_command,
        //     "-DCMAKE_OSX_ARCHITECTURES=x86_64",
        // );
        using options := get_build_options();
        array_add(*config_command, tprint("-DCMAKE_OSX_DEPLOYMENT_TARGET=%.%", minimum_macos_version.major, minimum_macos_version.minor));
    }

    run_or_exit(..config_command, working_directory = absolute_build_dir);
    log("Done configuring libharu");

    log("Building libharu…");
    build_command: [..] string;
    array_add(*build_command, "cmake", "--build", absolute_build_dir, "--target", "install");
    // if (check_if_cmake_supports_parallel_jobs()) {
    //     array_add(*build_command, "--parallel", tprint("%", NUM_PARALLEL_CMAKE_JOBS));
    // }
    run_or_exit(..build_command);
	log("Done building libharu");

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

    }

    return .RECURSE;
}

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";
#import "String";
#import "Process";

FOOTER_UNIX :: #string END

#if OS == .MACOS    libharu :: #library "macos/lib/libhpdf";
#if OS == .LINUX    libharu :: #library "linux/lib/libhpdf";

END

