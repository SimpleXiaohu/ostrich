# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mku/share/tool_source/z3_mur

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mku/tools/z3str4

# Utility rule file for c_example.

# Include the progress variables for this target.
include examples/CMakeFiles/c_example.dir/progress.make

examples/CMakeFiles/c_example: examples/CMakeFiles/c_example-complete


examples/CMakeFiles/c_example-complete: examples/c_example-prefix/src/c_example-stamp/c_example-install
examples/CMakeFiles/c_example-complete: examples/c_example-prefix/src/c_example-stamp/c_example-mkdir
examples/CMakeFiles/c_example-complete: examples/c_example-prefix/src/c_example-stamp/c_example-download
examples/CMakeFiles/c_example-complete: examples/c_example-prefix/src/c_example-stamp/c_example-update
examples/CMakeFiles/c_example-complete: examples/c_example-prefix/src/c_example-stamp/c_example-patch
examples/CMakeFiles/c_example-complete: examples/c_example-prefix/src/c_example-stamp/c_example-configure
examples/CMakeFiles/c_example-complete: examples/c_example-prefix/src/c_example-stamp/c_example-build
examples/CMakeFiles/c_example-complete: examples/c_example-prefix/src/c_example-stamp/c_example-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mku/tools/z3str4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'c_example'"
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E make_directory /home/mku/tools/z3str4/examples/CMakeFiles
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E touch /home/mku/tools/z3str4/examples/CMakeFiles/c_example-complete
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E touch /home/mku/tools/z3str4/examples/c_example-prefix/src/c_example-stamp/c_example-done

examples/c_example-prefix/src/c_example-stamp/c_example-install: examples/c_example-prefix/src/c_example-stamp/c_example-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mku/tools/z3str4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'c_example'"
	cd /home/mku/tools/z3str4/examples/c_example_build_dir && /usr/bin/cmake -E echo
	cd /home/mku/tools/z3str4/examples/c_example_build_dir && /usr/bin/cmake -E touch /home/mku/tools/z3str4/examples/c_example-prefix/src/c_example-stamp/c_example-install

examples/c_example-prefix/src/c_example-stamp/c_example-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mku/tools/z3str4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'c_example'"
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E make_directory /home/mku/share/tool_source/z3_mur/examples/c
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E make_directory /home/mku/tools/z3str4/examples/c_example_build_dir
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E make_directory /home/mku/tools/z3str4/examples/c_example-prefix
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E make_directory /home/mku/tools/z3str4/examples/c_example-prefix/tmp
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E make_directory /home/mku/tools/z3str4/examples/c_example-prefix/src/c_example-stamp
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E make_directory /home/mku/tools/z3str4/examples/c_example-prefix/src
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E touch /home/mku/tools/z3str4/examples/c_example-prefix/src/c_example-stamp/c_example-mkdir

examples/c_example-prefix/src/c_example-stamp/c_example-download: examples/c_example-prefix/src/c_example-stamp/c_example-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mku/tools/z3str4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'c_example'"
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E echo_append
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E touch /home/mku/tools/z3str4/examples/c_example-prefix/src/c_example-stamp/c_example-download

examples/c_example-prefix/src/c_example-stamp/c_example-update: examples/c_example-prefix/src/c_example-stamp/c_example-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mku/tools/z3str4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'c_example'"
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E echo_append
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E touch /home/mku/tools/z3str4/examples/c_example-prefix/src/c_example-stamp/c_example-update

examples/c_example-prefix/src/c_example-stamp/c_example-patch: examples/c_example-prefix/src/c_example-stamp/c_example-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mku/tools/z3str4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'c_example'"
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E echo_append
	cd /home/mku/tools/z3str4/examples && /usr/bin/cmake -E touch /home/mku/tools/z3str4/examples/c_example-prefix/src/c_example-stamp/c_example-patch

examples/c_example-prefix/src/c_example-stamp/c_example-configure: examples/c_example-prefix/tmp/c_example-cfgcmd.txt
examples/c_example-prefix/src/c_example-stamp/c_example-configure: examples/c_example-prefix/src/c_example-stamp/c_example-update
examples/c_example-prefix/src/c_example-stamp/c_example-configure: examples/c_example-prefix/src/c_example-stamp/c_example-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mku/tools/z3str4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'c_example'"
	cd /home/mku/tools/z3str4/examples/c_example_build_dir && /usr/bin/cmake -DZ3_DIR=/home/mku/tools/z3str4 -DCMAKE_BUILD_TYPE:STRING=Release "-GUnix Makefiles" /home/mku/share/tool_source/z3_mur/examples/c
	cd /home/mku/tools/z3str4/examples/c_example_build_dir && /usr/bin/cmake -E touch /home/mku/tools/z3str4/examples/c_example-prefix/src/c_example-stamp/c_example-configure

examples/c_example-prefix/src/c_example-stamp/c_example-build: examples/c_example-prefix/src/c_example-stamp/c_example-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mku/tools/z3str4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'c_example'"
	cd /home/mku/tools/z3str4/examples/c_example_build_dir && $(MAKE)

c_example: examples/CMakeFiles/c_example
c_example: examples/CMakeFiles/c_example-complete
c_example: examples/c_example-prefix/src/c_example-stamp/c_example-install
c_example: examples/c_example-prefix/src/c_example-stamp/c_example-mkdir
c_example: examples/c_example-prefix/src/c_example-stamp/c_example-download
c_example: examples/c_example-prefix/src/c_example-stamp/c_example-update
c_example: examples/c_example-prefix/src/c_example-stamp/c_example-patch
c_example: examples/c_example-prefix/src/c_example-stamp/c_example-configure
c_example: examples/c_example-prefix/src/c_example-stamp/c_example-build
c_example: examples/CMakeFiles/c_example.dir/build.make

.PHONY : c_example

# Rule to build all files generated by this target.
examples/CMakeFiles/c_example.dir/build: c_example

.PHONY : examples/CMakeFiles/c_example.dir/build

examples/CMakeFiles/c_example.dir/clean:
	cd /home/mku/tools/z3str4/examples && $(CMAKE_COMMAND) -P CMakeFiles/c_example.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/c_example.dir/clean

examples/CMakeFiles/c_example.dir/depend:
	cd /home/mku/tools/z3str4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mku/share/tool_source/z3_mur /home/mku/share/tool_source/z3_mur/examples /home/mku/tools/z3str4 /home/mku/tools/z3str4/examples /home/mku/tools/z3str4/examples/CMakeFiles/c_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/c_example.dir/depend

