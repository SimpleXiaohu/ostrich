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
include src/cmd_context/CMakeFiles/cmd_context.dir/depend.make

# Include the progress variables for this target.
include src/cmd_context/CMakeFiles/cmd_context.dir/progress.make

# Include the compile flags for this target's objects.
include src/cmd_context/CMakeFiles/cmd_context.dir/flags.make

src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/basic_cmds.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/basic_cmds.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/basic_cmds.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/basic_cmds.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/basic_cmds.cpp > CMakeFiles/cmd_context.dir/basic_cmds.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/basic_cmds.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/basic_cmds.cpp -o CMakeFiles/cmd_context.dir/basic_cmds.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/check_logic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/check_logic.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/check_logic.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/check_logic.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/check_logic.cpp > CMakeFiles/cmd_context.dir/check_logic.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/check_logic.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/check_logic.cpp -o CMakeFiles/cmd_context.dir/check_logic.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_context.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/cmd_context.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_context.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/cmd_context.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_context.cpp > CMakeFiles/cmd_context.dir/cmd_context.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/cmd_context.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_context.cpp -o CMakeFiles/cmd_context.dir/cmd_context.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_context_to_goal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_context_to_goal.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_context_to_goal.cpp > CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_context_to_goal.cpp -o CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/cmd_util.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_util.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/cmd_util.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_util.cpp > CMakeFiles/cmd_context.dir/cmd_util.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/cmd_util.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/cmd_util.cpp -o CMakeFiles/cmd_context.dir/cmd_util.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/context_params.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/context_params.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/context_params.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/context_params.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/context_params.cpp > CMakeFiles/cmd_context.dir/context_params.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/context_params.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/context_params.cpp -o CMakeFiles/cmd_context.dir/context_params.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/echo_tactic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/echo_tactic.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/echo_tactic.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/echo_tactic.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/echo_tactic.cpp > CMakeFiles/cmd_context.dir/echo_tactic.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/echo_tactic.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/echo_tactic.cpp -o CMakeFiles/cmd_context.dir/echo_tactic.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/eval_cmd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/eval_cmd.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/eval_cmd.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/eval_cmd.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/eval_cmd.cpp > CMakeFiles/cmd_context.dir/eval_cmd.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/eval_cmd.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/eval_cmd.cpp -o CMakeFiles/cmd_context.dir/eval_cmd.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/parametric_cmd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/parametric_cmd.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/parametric_cmd.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/parametric_cmd.cpp > CMakeFiles/cmd_context.dir/parametric_cmd.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/parametric_cmd.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/parametric_cmd.cpp -o CMakeFiles/cmd_context.dir/parametric_cmd.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/pdecl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/pdecl.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/pdecl.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/pdecl.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/pdecl.cpp > CMakeFiles/cmd_context.dir/pdecl.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/pdecl.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/pdecl.cpp -o CMakeFiles/cmd_context.dir/pdecl.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/simplify_cmd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/simplify_cmd.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/simplify_cmd.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/simplify_cmd.cpp > CMakeFiles/cmd_context.dir/simplify_cmd.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/simplify_cmd.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/simplify_cmd.cpp -o CMakeFiles/cmd_context.dir/simplify_cmd.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/tactic_cmds.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/tactic_cmds.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/tactic_cmds.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/tactic_cmds.cpp > CMakeFiles/cmd_context.dir/tactic_cmds.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/tactic_cmds.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/tactic_cmds.cpp -o CMakeFiles/cmd_context.dir/tactic_cmds.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o


src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o: src/cmd_context/CMakeFiles/cmd_context.dir/flags.make
src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o: /home/mku/share/tool_source/z3_TRAU/src/cmd_context/tactic_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mku/tools/z3_TRAU/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmd_context.dir/tactic_manager.cpp.o -c /home/mku/share/tool_source/z3_TRAU/src/cmd_context/tactic_manager.cpp

src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmd_context.dir/tactic_manager.cpp.i"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mku/share/tool_source/z3_TRAU/src/cmd_context/tactic_manager.cpp > CMakeFiles/cmd_context.dir/tactic_manager.cpp.i

src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmd_context.dir/tactic_manager.cpp.s"
	cd /home/mku/tools/z3_TRAU/src/cmd_context && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mku/share/tool_source/z3_TRAU/src/cmd_context/tactic_manager.cpp -o CMakeFiles/cmd_context.dir/tactic_manager.cpp.s

src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o.requires:

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o.requires

src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o.provides: src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o.requires
	$(MAKE) -f src/cmd_context/CMakeFiles/cmd_context.dir/build.make src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o.provides.build
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o.provides

src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o.provides.build: src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o


cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o
cmd_context: src/cmd_context/CMakeFiles/cmd_context.dir/build.make

.PHONY : cmd_context

# Rule to build all files generated by this target.
src/cmd_context/CMakeFiles/cmd_context.dir/build: cmd_context

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/build

src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/basic_cmds.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/check_logic.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_context_to_goal.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/cmd_util.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/context_params.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/echo_tactic.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/eval_cmd.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/parametric_cmd.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/pdecl.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/simplify_cmd.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/tactic_cmds.cpp.o.requires
src/cmd_context/CMakeFiles/cmd_context.dir/requires: src/cmd_context/CMakeFiles/cmd_context.dir/tactic_manager.cpp.o.requires

.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/requires

src/cmd_context/CMakeFiles/cmd_context.dir/clean:
	cd /home/mku/tools/z3_TRAU/src/cmd_context && $(CMAKE_COMMAND) -P CMakeFiles/cmd_context.dir/cmake_clean.cmake
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/clean

src/cmd_context/CMakeFiles/cmd_context.dir/depend:
	cd /home/mku/tools/z3_TRAU && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mku/share/tool_source/z3_TRAU /home/mku/share/tool_source/z3_TRAU/src/cmd_context /home/mku/tools/z3_TRAU /home/mku/tools/z3_TRAU/src/cmd_context /home/mku/tools/z3_TRAU/src/cmd_context/CMakeFiles/cmd_context.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/cmd_context/CMakeFiles/cmd_context.dir/depend

