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
include src/smt/tactic/CMakeFiles/smt_tactic.dir/depend.make

# Include the progress variables for this target.
include src/smt/tactic/CMakeFiles/smt_tactic.dir/progress.make

# Include the compile flags for this target's objects.
include src/smt/tactic/CMakeFiles/smt_tactic.dir/flags.make

src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o: src/smt/tactic/CMakeFiles/smt_tactic.dir/flags.make
src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/ctx_solver_simplify_tactic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/smt/tactic && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/ctx_solver_simplify_tactic.cpp

src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/smt/tactic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/ctx_solver_simplify_tactic.cpp > CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.i

src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/smt/tactic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/ctx_solver_simplify_tactic.cpp -o CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.s

src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o.requires:

.PHONY : src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o.requires

src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o.provides: src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o.requires
	$(MAKE) -f src/smt/tactic/CMakeFiles/smt_tactic.dir/build.make src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o.provides.build
.PHONY : src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o.provides

src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o.provides.build: src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o


src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o: src/smt/tactic/CMakeFiles/smt_tactic.dir/flags.make
src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/smt_tactic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/smt/tactic && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/smt_tactic.cpp

src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smt_tactic.dir/smt_tactic.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/smt/tactic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/smt_tactic.cpp > CMakeFiles/smt_tactic.dir/smt_tactic.cpp.i

src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smt_tactic.dir/smt_tactic.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/smt/tactic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/smt_tactic.cpp -o CMakeFiles/smt_tactic.dir/smt_tactic.cpp.s

src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o.requires:

.PHONY : src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o.requires

src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o.provides: src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o.requires
	$(MAKE) -f src/smt/tactic/CMakeFiles/smt_tactic.dir/build.make src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o.provides.build
.PHONY : src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o.provides

src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o.provides.build: src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o


src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o: src/smt/tactic/CMakeFiles/smt_tactic.dir/flags.make
src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/unit_subsumption_tactic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/smt/tactic && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/unit_subsumption_tactic.cpp

src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/smt/tactic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/unit_subsumption_tactic.cpp > CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.i

src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/smt/tactic && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/smt/tactic/unit_subsumption_tactic.cpp -o CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.s

src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o.requires:

.PHONY : src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o.requires

src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o.provides: src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o.requires
	$(MAKE) -f src/smt/tactic/CMakeFiles/smt_tactic.dir/build.make src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o.provides.build
.PHONY : src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o.provides

src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o.provides.build: src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o


smt_tactic: src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o
smt_tactic: src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o
smt_tactic: src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o
smt_tactic: src/smt/tactic/CMakeFiles/smt_tactic.dir/build.make

.PHONY : smt_tactic

# Rule to build all files generated by this target.
src/smt/tactic/CMakeFiles/smt_tactic.dir/build: smt_tactic

.PHONY : src/smt/tactic/CMakeFiles/smt_tactic.dir/build

src/smt/tactic/CMakeFiles/smt_tactic.dir/requires: src/smt/tactic/CMakeFiles/smt_tactic.dir/ctx_solver_simplify_tactic.cpp.o.requires
src/smt/tactic/CMakeFiles/smt_tactic.dir/requires: src/smt/tactic/CMakeFiles/smt_tactic.dir/smt_tactic.cpp.o.requires
src/smt/tactic/CMakeFiles/smt_tactic.dir/requires: src/smt/tactic/CMakeFiles/smt_tactic.dir/unit_subsumption_tactic.cpp.o.requires

.PHONY : src/smt/tactic/CMakeFiles/smt_tactic.dir/requires

src/smt/tactic/CMakeFiles/smt_tactic.dir/clean:
	cd /home/mku/tools/z3_TRAU/src/smt/tactic && $(CMAKE_COMMAND) -P CMakeFiles/smt_tactic.dir/cmake_clean.cmake
.PHONY : src/smt/tactic/CMakeFiles/smt_tactic.dir/clean

src/smt/tactic/CMakeFiles/smt_tactic.dir/depend:
	cd /home/mku/tools/z3_TRAU && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mku/share/tool_source/z3_TRAU /home/mku/share/tool_source/z3_TRAU/src/smt/tactic /home/mku/tools/z3_TRAU /home/mku/tools/z3_TRAU/src/smt/tactic /home/mku/tools/z3_TRAU/src/smt/tactic/CMakeFiles/smt_tactic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/smt/tactic/CMakeFiles/smt_tactic.dir/depend

