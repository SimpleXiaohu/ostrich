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
include src/sat/sat_solver/CMakeFiles/sat_solver.dir/depend.make

# Include the progress variables for this target.
include src/sat/sat_solver/CMakeFiles/sat_solver.dir/progress.make

# Include the compile flags for this target's objects.
include src/sat/sat_solver/CMakeFiles/sat_solver.dir/flags.make

src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o: src/sat/sat_solver/CMakeFiles/sat_solver.dir/flags.make
src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/sat/sat_solver/inc_sat_solver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/sat/sat_solver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/sat/sat_solver/inc_sat_solver.cpp

src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/sat/sat_solver && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/sat/sat_solver/inc_sat_solver.cpp > CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.i

src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/sat/sat_solver && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/sat/sat_solver/inc_sat_solver.cpp -o CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.s

src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o.requires:

.PHONY : src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o.requires

src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o.provides: src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o.requires
	$(MAKE) -f src/sat/sat_solver/CMakeFiles/sat_solver.dir/build.make src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o.provides.build
.PHONY : src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o.provides

src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o.provides.build: src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o


sat_solver: src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o
sat_solver: src/sat/sat_solver/CMakeFiles/sat_solver.dir/build.make

.PHONY : sat_solver

# Rule to build all files generated by this target.
src/sat/sat_solver/CMakeFiles/sat_solver.dir/build: sat_solver

.PHONY : src/sat/sat_solver/CMakeFiles/sat_solver.dir/build

src/sat/sat_solver/CMakeFiles/sat_solver.dir/requires: src/sat/sat_solver/CMakeFiles/sat_solver.dir/inc_sat_solver.cpp.o.requires

.PHONY : src/sat/sat_solver/CMakeFiles/sat_solver.dir/requires

src/sat/sat_solver/CMakeFiles/sat_solver.dir/clean:
	cd /home/mku/tools/z3_TRAU/src/sat/sat_solver && $(CMAKE_COMMAND) -P CMakeFiles/sat_solver.dir/cmake_clean.cmake
.PHONY : src/sat/sat_solver/CMakeFiles/sat_solver.dir/clean

src/sat/sat_solver/CMakeFiles/sat_solver.dir/depend:
	cd /home/mku/tools/z3_TRAU && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mku/share/tool_source/z3_TRAU /home/mku/share/tool_source/z3_TRAU/src/sat/sat_solver /home/mku/tools/z3_TRAU /home/mku/tools/z3_TRAU/src/sat/sat_solver /home/mku/tools/z3_TRAU/src/sat/sat_solver/CMakeFiles/sat_solver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/sat/sat_solver/CMakeFiles/sat_solver.dir/depend

