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
CMAKE_SOURCE_DIR = /home/mku/share/tool_source/z3_TRAU

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mku/tools/z3_TRAU

# Include any dependencies generated for this target.
include src/parsers/smt2/CMakeFiles/smt2parser.dir/depend.make

# Include the progress variables for this target.
include src/parsers/smt2/CMakeFiles/smt2parser.dir/progress.make

# Include the compile flags for this target's objects.
include src/parsers/smt2/CMakeFiles/smt2parser.dir/flags.make

src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o: src/parsers/smt2/CMakeFiles/smt2parser.dir/flags.make
src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/marshal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/parsers/smt2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/smt2parser.dir/marshal.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/marshal.cpp

src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smt2parser.dir/marshal.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/parsers/smt2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/marshal.cpp > CMakeFiles/smt2parser.dir/marshal.cpp.i

src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smt2parser.dir/marshal.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/parsers/smt2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/marshal.cpp -o CMakeFiles/smt2parser.dir/marshal.cpp.s

src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o.requires:

.PHONY : src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o.requires

src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o.provides: src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o.requires
	$(MAKE) -f src/parsers/smt2/CMakeFiles/smt2parser.dir/build.make src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o.provides.build
.PHONY : src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o.provides

src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o.provides.build: src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o


src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o: src/parsers/smt2/CMakeFiles/smt2parser.dir/flags.make
src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/smt2parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/parsers/smt2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/smt2parser.dir/smt2parser.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/smt2parser.cpp

src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smt2parser.dir/smt2parser.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/parsers/smt2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/smt2parser.cpp > CMakeFiles/smt2parser.dir/smt2parser.cpp.i

src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smt2parser.dir/smt2parser.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/parsers/smt2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/smt2parser.cpp -o CMakeFiles/smt2parser.dir/smt2parser.cpp.s

src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o.requires:

.PHONY : src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o.requires

src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o.provides: src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o.requires
	$(MAKE) -f src/parsers/smt2/CMakeFiles/smt2parser.dir/build.make src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o.provides.build
.PHONY : src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o.provides

src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o.provides.build: src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o


src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o: src/parsers/smt2/CMakeFiles/smt2parser.dir/flags.make
src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/smt2scanner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/parsers/smt2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/smt2parser.dir/smt2scanner.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/smt2scanner.cpp

src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smt2parser.dir/smt2scanner.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/parsers/smt2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/smt2scanner.cpp > CMakeFiles/smt2parser.dir/smt2scanner.cpp.i

src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smt2parser.dir/smt2scanner.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/parsers/smt2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2/smt2scanner.cpp -o CMakeFiles/smt2parser.dir/smt2scanner.cpp.s

src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o.requires:

.PHONY : src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o.requires

src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o.provides: src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o.requires
	$(MAKE) -f src/parsers/smt2/CMakeFiles/smt2parser.dir/build.make src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o.provides.build
.PHONY : src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o.provides

src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o.provides.build: src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o


smt2parser: src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o
smt2parser: src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o
smt2parser: src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o
smt2parser: src/parsers/smt2/CMakeFiles/smt2parser.dir/build.make

.PHONY : smt2parser

# Rule to build all files generated by this target.
src/parsers/smt2/CMakeFiles/smt2parser.dir/build: smt2parser

.PHONY : src/parsers/smt2/CMakeFiles/smt2parser.dir/build

src/parsers/smt2/CMakeFiles/smt2parser.dir/requires: src/parsers/smt2/CMakeFiles/smt2parser.dir/marshal.cpp.o.requires
src/parsers/smt2/CMakeFiles/smt2parser.dir/requires: src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2parser.cpp.o.requires
src/parsers/smt2/CMakeFiles/smt2parser.dir/requires: src/parsers/smt2/CMakeFiles/smt2parser.dir/smt2scanner.cpp.o.requires

.PHONY : src/parsers/smt2/CMakeFiles/smt2parser.dir/requires

src/parsers/smt2/CMakeFiles/smt2parser.dir/clean:
	cd /home/mku/tools/z3_TRAU/src/parsers/smt2 && $(CMAKE_COMMAND) -P CMakeFiles/smt2parser.dir/cmake_clean.cmake
.PHONY : src/parsers/smt2/CMakeFiles/smt2parser.dir/clean

src/parsers/smt2/CMakeFiles/smt2parser.dir/depend:
	cd /home/mku/tools/z3_TRAU && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mku/share/tool_source/z3_TRAU /home/mku/share/tool_source/z3_TRAU/src/parsers/smt2 /home/mku/tools/z3_TRAU /home/mku/tools/z3_TRAU/src/parsers/smt2 /home/mku/tools/z3_TRAU/src/parsers/smt2/CMakeFiles/smt2parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/parsers/smt2/CMakeFiles/smt2parser.dir/depend

