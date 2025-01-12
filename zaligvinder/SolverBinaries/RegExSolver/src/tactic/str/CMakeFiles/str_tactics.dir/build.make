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

# Include any dependencies generated for this target.
include src/tactic/str/CMakeFiles/str_tactics.dir/depend.make

# Include the progress variables for this target.
include src/tactic/str/CMakeFiles/str_tactics.dir/progress.make

# Include the compile flags for this target's objects.
include src/tactic/str/CMakeFiles/str_tactics.dir/flags.make

src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o: src/tactic/str/CMakeFiles/str_tactics.dir/flags.make
src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o: /home/mku/share/tool_source/z3_mur/src/tactic/str/ext_str_tactic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3str4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o"
	cd /home/mku/tools/z3str4/src/tactic/str && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o -c /home/mku/share/tool_source/z3_mur/src/tactic/str/ext_str_tactic.cpp

src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.i"
	cd /home/mku/tools/z3str4/src/tactic/str && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_mur/src/tactic/str/ext_str_tactic.cpp > CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.i

src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.s"
	cd /home/mku/tools/z3str4/src/tactic/str && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_mur/src/tactic/str/ext_str_tactic.cpp -o CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.s

src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o.requires:

.PHONY : src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o.requires

src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o.provides: src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o.requires
	$(MAKE) -f src/tactic/str/CMakeFiles/str_tactics.dir/build.make src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o.provides.build
.PHONY : src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o.provides

src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o.provides.build: src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o


src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o: src/tactic/str/CMakeFiles/str_tactics.dir/flags.make
src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o: /home/mku/share/tool_source/z3_mur/src/tactic/str/str_ml_tactic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3str4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o"
	cd /home/mku/tools/z3str4/src/tactic/str && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o -c /home/mku/share/tool_source/z3_mur/src/tactic/str/str_ml_tactic.cpp

src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.i"
	cd /home/mku/tools/z3str4/src/tactic/str && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_mur/src/tactic/str/str_ml_tactic.cpp > CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.i

src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.s"
	cd /home/mku/tools/z3str4/src/tactic/str && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_mur/src/tactic/str/str_ml_tactic.cpp -o CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.s

src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o.requires:

.PHONY : src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o.requires

src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o.provides: src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o.requires
	$(MAKE) -f src/tactic/str/CMakeFiles/str_tactics.dir/build.make src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o.provides.build
.PHONY : src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o.provides

src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o.provides.build: src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o


str_tactics: src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o
str_tactics: src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o
str_tactics: src/tactic/str/CMakeFiles/str_tactics.dir/build.make

.PHONY : str_tactics

# Rule to build all files generated by this target.
src/tactic/str/CMakeFiles/str_tactics.dir/build: str_tactics

.PHONY : src/tactic/str/CMakeFiles/str_tactics.dir/build

src/tactic/str/CMakeFiles/str_tactics.dir/requires: src/tactic/str/CMakeFiles/str_tactics.dir/ext_str_tactic.cpp.o.requires
src/tactic/str/CMakeFiles/str_tactics.dir/requires: src/tactic/str/CMakeFiles/str_tactics.dir/str_ml_tactic.cpp.o.requires

.PHONY : src/tactic/str/CMakeFiles/str_tactics.dir/requires

src/tactic/str/CMakeFiles/str_tactics.dir/clean:
	cd /home/mku/tools/z3str4/src/tactic/str && $(CMAKE_COMMAND) -P CMakeFiles/str_tactics.dir/cmake_clean.cmake
.PHONY : src/tactic/str/CMakeFiles/str_tactics.dir/clean

src/tactic/str/CMakeFiles/str_tactics.dir/depend:
	cd /home/mku/tools/z3str4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mku/share/tool_source/z3_mur /home/mku/share/tool_source/z3_mur/src/tactic/str /home/mku/tools/z3str4 /home/mku/tools/z3str4/src/tactic/str /home/mku/tools/z3str4/src/tactic/str/CMakeFiles/str_tactics.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tactic/str/CMakeFiles/str_tactics.dir/depend

