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
include src/muz/dataflow/CMakeFiles/dataflow.dir/depend.make

# Include the progress variables for this target.
include src/muz/dataflow/CMakeFiles/dataflow.dir/progress.make

# Include the compile flags for this target's objects.
include src/muz/dataflow/CMakeFiles/dataflow.dir/flags.make

src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o: src/muz/dataflow/CMakeFiles/dataflow.dir/flags.make
src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/muz/dataflow/dataflow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/muz/dataflow && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dataflow.dir/dataflow.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/muz/dataflow/dataflow.cpp

src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dataflow.dir/dataflow.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/muz/dataflow && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/muz/dataflow/dataflow.cpp > CMakeFiles/dataflow.dir/dataflow.cpp.i

src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dataflow.dir/dataflow.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/muz/dataflow && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/muz/dataflow/dataflow.cpp -o CMakeFiles/dataflow.dir/dataflow.cpp.s

src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o.requires:

.PHONY : src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o.requires

src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o.provides: src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o.requires
	$(MAKE) -f src/muz/dataflow/CMakeFiles/dataflow.dir/build.make src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o.provides.build
.PHONY : src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o.provides

src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o.provides.build: src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o


dataflow: src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o
dataflow: src/muz/dataflow/CMakeFiles/dataflow.dir/build.make

.PHONY : dataflow

# Rule to build all files generated by this target.
src/muz/dataflow/CMakeFiles/dataflow.dir/build: dataflow

.PHONY : src/muz/dataflow/CMakeFiles/dataflow.dir/build

src/muz/dataflow/CMakeFiles/dataflow.dir/requires: src/muz/dataflow/CMakeFiles/dataflow.dir/dataflow.cpp.o.requires

.PHONY : src/muz/dataflow/CMakeFiles/dataflow.dir/requires

src/muz/dataflow/CMakeFiles/dataflow.dir/clean:
	cd /home/mku/tools/z3_TRAU/src/muz/dataflow && $(CMAKE_COMMAND) -P CMakeFiles/dataflow.dir/cmake_clean.cmake
.PHONY : src/muz/dataflow/CMakeFiles/dataflow.dir/clean

src/muz/dataflow/CMakeFiles/dataflow.dir/depend:
	cd /home/mku/tools/z3_TRAU && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mku/share/tool_source/z3_TRAU /home/mku/share/tool_source/z3_TRAU/src/muz/dataflow /home/mku/tools/z3_TRAU /home/mku/tools/z3_TRAU/src/muz/dataflow /home/mku/tools/z3_TRAU/src/muz/dataflow/CMakeFiles/dataflow.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/muz/dataflow/CMakeFiles/dataflow.dir/depend

