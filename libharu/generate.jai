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
        // array_add(*flatten_namespaces, "ImGui");
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


//imgui_visitor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
//    // ImGui has "typedef ints" for each enum. but we want to just use the enums directly,
//    // so we get nice type safety, and .unary dots, etc.
//    //
//    // Look for declarations inside functions (i.e., arguments) or structs (i.e., fields)
//    get_associated_enum_name :: (name: string) -> string {
//        if name.count > 1 && name[name.count - 1] != #char "_" {
//            return tprint("%_", name);
//        }
//        return name;
//    }

//    if !parent_decl {
//        if array_find(DECLARATIONS_TO_OMIT, decl.name) {
//            decl.decl_flags |= .OMIT_FROM_OUTPUT;
//            return .STOP;
//        }
//        if decl.name == "ImGuiContext" {
//            decl.output_name = decl.name; // Don’t shorten ImGuiContext to Context as this would conflict
//        }

//        if decl.kind == .TYPEDEF {
//            old_name := decl.name;
//            if old_name {
//                new_name := get_associated_enum_name(old_name);
//                for context.generator.global_scope.members {
//                    if it.kind != .ENUM  || it.name != new_name     continue;

//                    en := cast(*Enum)it;

//                    // Don't output the integer typedef
//                    decl.decl_flags |= .OMIT_FROM_OUTPUT;

//                    // Make sure the enums like "FocusFlags_" get outputted as "FocusFlags"
//                    if en.output_name.count > 2 && en.output_name[en.output_name.count - 1] == #char "_" {
//                        en.output_name.count -= 1;
//                    }

//                    // Keep the comment, if there is one:
//                    if decl.comment.text && !en.comment.text {
//                        en.comment = decl.comment;
//                    }

//                    table_add(*enums_for_typedefs, old_name, en);
//                    break;
//                }
//            }
//        }
//    }

//    // Look for function arguments with "typedef" types.
//    if parent_decl &&
//        (parent_decl.kind == .FUNCTION || parent_decl.kind == .STRUCT) &&
//        decl.kind == .DECLARATION && decl.type.type_of_typedef != null
//    {
//        old_name := decl.type.type_of_typedef.name;
//        if old_name {
//            en, found := table_find(*enums_for_typedefs, old_name);
//            if found {
//                // swap in the enum for the typedef
//                decl.type.type_of_typedef = null;
//                decl.type.type_of_enum = en;

//                // we'll also need to output a cast, like "cast(EnumType)5" for the default argument
//                decl.decl_flags |= .NEEDS_DEFAULT_ARGUMENT_CAST;
//            }
//        }
//    }

//    if decl.kind == .ENUM {
//        // ImGui has lots of enums that should be enum flags. Luckily, they all end in "…Flags_".
//        if ends_with(decl.name, "Flags_") {
//            en := cast(*Enum)decl;
//            en.flags |= .IS_ENUM_FLAGS;
//            en.flags |= .VALUES_IN_HEX;
//        }
//    }

//    if decl.kind == .FUNCTION {
//        func := cast(*Function)decl;
//        type := func.type.type_of_function;
//        // ImGui also has functions with pairs of arguments like "text_begin" and "text_end"
//        // for the pointers to the beginning and end of a string. We'll generate wrappers for
//        // those function which take a jai string.
//        //
//        // Here we collect pointers to "_begin" arguments, and use them in
//        // get_func_args_for_printing below.
//        for type.arguments {
//            if it_index == 0 || !ends_with(it.name, "_end")     continue;
//            arg_type := find_underlying_type(it.type);
//            if !arg_type.pointer_to || !(arg_type.pointer_to.number_flags & ._8BIT) continue; // Only convert *u8 ranges to string

//            name_part := slice(it.name, 0, it.name.count - "_end".count);
//            if !name_part   continue;

//            // the first arg may appear as "text_begin" or just "text"
//            name_part_with_begin := tprint("%_begin", name_part);
//            prev_arg := type.arguments[it_index - 1];
//            if prev_arg.name == name_part || prev_arg.name == name_part_with_begin {
//                array_add(*begin_end_string_args, prev_arg);
//                func.decl_flags |= .NEEDS_ARGUMENT_WRAPPER;
//            }
//        }
//    }

//    return .RECURSE;
//}

//// Modify function with _begin and _end string arguments as they get printed.
//// See the note above about "text_begin".
//imgui_get_function_arg_for_printing :: (func: *Function, type: *Function_Type, mode: Arg_Print_Mode) -> []*Declaration {
//    args: [..]*Declaration;
//    for type.arguments {
//        if array_find(begin_end_string_args, it) {
//            if mode == {
//                case .OUTER_WRAPPER;
//                    // For the outer wrapper, remove any "_begin" part of the argument, and
//                    // change its type to a jai string
//                    arg_copy := New(Declaration);
//                    (<<arg_copy) = <<it;
//                    arg_copy.type = context.generator.type_def_jai_string;
//                    if ends_with(it.name, "_begin") {
//                        arg_copy.output_name = slice(it.name, 0, it.name.count - "_begin".count);
//                    }
//                    array_add(*args, arg_copy);

//                    it_index += 1; // skip the next argument-we collpase the _begin and _end args into one string arg

//                    continue;
//                case .INNER_WRAPPER_CALL;
//                    // For the inner wrapper function call, we pass the incoming arg
//                    // as two arguments: "jai_string.data, jai_string.data + jai_string.count" -- corresponding
//                    // to the _begin and _end parts.
//                    base_arg_name := it.name;
//                    if ends_with(it.name, "_begin") {
//                        base_arg_name = slice(it.name, 0, it.name.count - "_begin".count);
//                    }

//                    arg_copy := New(Declaration);
//                    (<<arg_copy) = <<it;
//                    arg_copy.output_name = tprint("%.data", base_arg_name);
//                    array_add(*args, arg_copy);

//                    arg_copy_2 := New(Declaration);
//                    (<<arg_copy_2) = <<it;
//                    arg_copy_2.output_name = tprint("%.data + %.count", base_arg_name, base_arg_name);
//                    array_add(*args, arg_copy_2);

//                    it_index += 1; // skip the next arg, since we already added a second one above
//                    continue;
//            }
//        }

//        array_add(*args, it);
//    }

//    return args;
//}

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";
#import "String";
#import "Process";

FOOTER_UNIX :: #string END

#if OS == .MACOS    imgui :: #library "macos/lib/libhpdf";
#if OS == .LINUX    imgui :: #library "linux/lib/libhpdf";

END

