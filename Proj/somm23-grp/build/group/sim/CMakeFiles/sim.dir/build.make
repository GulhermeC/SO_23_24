# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build

# Include any dependencies generated for this target.
include group/sim/CMakeFiles/sim.dir/depend.make

# Include the progress variables for this target.
include group/sim/CMakeFiles/sim.dir/progress.make

# Include the compile flags for this target's objects.
include group/sim/CMakeFiles/sim.dir/flags.make

group/sim/CMakeFiles/sim.dir/sim_init.cpp.o: group/sim/CMakeFiles/sim.dir/flags.make
group/sim/CMakeFiles/sim.dir/sim_init.cpp.o: /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_init.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object group/sim/CMakeFiles/sim.dir/sim_init.cpp.o"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/sim_init.cpp.o -c /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_init.cpp

group/sim/CMakeFiles/sim.dir/sim_init.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim_init.cpp.i"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_init.cpp > CMakeFiles/sim.dir/sim_init.cpp.i

group/sim/CMakeFiles/sim.dir/sim_init.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim_init.cpp.s"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_init.cpp -o CMakeFiles/sim.dir/sim_init.cpp.s

group/sim/CMakeFiles/sim.dir/sim_close.cpp.o: group/sim/CMakeFiles/sim.dir/flags.make
group/sim/CMakeFiles/sim.dir/sim_close.cpp.o: /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_close.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object group/sim/CMakeFiles/sim.dir/sim_close.cpp.o"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/sim_close.cpp.o -c /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_close.cpp

group/sim/CMakeFiles/sim.dir/sim_close.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim_close.cpp.i"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_close.cpp > CMakeFiles/sim.dir/sim_close.cpp.i

group/sim/CMakeFiles/sim.dir/sim_close.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim_close.cpp.s"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_close.cpp -o CMakeFiles/sim.dir/sim_close.cpp.s

group/sim/CMakeFiles/sim.dir/sim_load.cpp.o: group/sim/CMakeFiles/sim.dir/flags.make
group/sim/CMakeFiles/sim.dir/sim_load.cpp.o: /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_load.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object group/sim/CMakeFiles/sim.dir/sim_load.cpp.o"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/sim_load.cpp.o -c /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_load.cpp

group/sim/CMakeFiles/sim.dir/sim_load.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim_load.cpp.i"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_load.cpp > CMakeFiles/sim.dir/sim_load.cpp.i

group/sim/CMakeFiles/sim.dir/sim_load.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim_load.cpp.s"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_load.cpp -o CMakeFiles/sim.dir/sim_load.cpp.s

group/sim/CMakeFiles/sim.dir/sim_fill.cpp.o: group/sim/CMakeFiles/sim.dir/flags.make
group/sim/CMakeFiles/sim.dir/sim_fill.cpp.o: /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_fill.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object group/sim/CMakeFiles/sim.dir/sim_fill.cpp.o"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/sim_fill.cpp.o -c /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_fill.cpp

group/sim/CMakeFiles/sim.dir/sim_fill.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim_fill.cpp.i"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_fill.cpp > CMakeFiles/sim.dir/sim_fill.cpp.i

group/sim/CMakeFiles/sim.dir/sim_fill.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim_fill.cpp.s"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_fill.cpp -o CMakeFiles/sim.dir/sim_fill.cpp.s

group/sim/CMakeFiles/sim.dir/sim_print.cpp.o: group/sim/CMakeFiles/sim.dir/flags.make
group/sim/CMakeFiles/sim.dir/sim_print.cpp.o: /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_print.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object group/sim/CMakeFiles/sim.dir/sim_print.cpp.o"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/sim_print.cpp.o -c /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_print.cpp

group/sim/CMakeFiles/sim.dir/sim_print.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim_print.cpp.i"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_print.cpp > CMakeFiles/sim.dir/sim_print.cpp.i

group/sim/CMakeFiles/sim.dir/sim_print.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim_print.cpp.s"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_print.cpp -o CMakeFiles/sim.dir/sim_print.cpp.s

group/sim/CMakeFiles/sim.dir/sim_get_process.cpp.o: group/sim/CMakeFiles/sim.dir/flags.make
group/sim/CMakeFiles/sim.dir/sim_get_process.cpp.o: /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_get_process.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object group/sim/CMakeFiles/sim.dir/sim_get_process.cpp.o"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/sim_get_process.cpp.o -c /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_get_process.cpp

group/sim/CMakeFiles/sim.dir/sim_get_process.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim_get_process.cpp.i"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_get_process.cpp > CMakeFiles/sim.dir/sim_get_process.cpp.i

group/sim/CMakeFiles/sim.dir/sim_get_process.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim_get_process.cpp.s"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_get_process.cpp -o CMakeFiles/sim.dir/sim_get_process.cpp.s

group/sim/CMakeFiles/sim.dir/sim_step.cpp.o: group/sim/CMakeFiles/sim.dir/flags.make
group/sim/CMakeFiles/sim.dir/sim_step.cpp.o: /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_step.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object group/sim/CMakeFiles/sim.dir/sim_step.cpp.o"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/sim_step.cpp.o -c /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_step.cpp

group/sim/CMakeFiles/sim.dir/sim_step.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim_step.cpp.i"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_step.cpp > CMakeFiles/sim.dir/sim_step.cpp.i

group/sim/CMakeFiles/sim.dir/sim_step.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim_step.cpp.s"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_step.cpp -o CMakeFiles/sim.dir/sim_step.cpp.s

group/sim/CMakeFiles/sim.dir/sim_run.cpp.o: group/sim/CMakeFiles/sim.dir/flags.make
group/sim/CMakeFiles/sim.dir/sim_run.cpp.o: /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_run.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object group/sim/CMakeFiles/sim.dir/sim_run.cpp.o"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/sim_run.cpp.o -c /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_run.cpp

group/sim/CMakeFiles/sim.dir/sim_run.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim_run.cpp.i"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_run.cpp > CMakeFiles/sim.dir/sim_run.cpp.i

group/sim/CMakeFiles/sim.dir/sim_run.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim_run.cpp.s"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim/sim_run.cpp -o CMakeFiles/sim.dir/sim_run.cpp.s

# Object files for target sim
sim_OBJECTS = \
"CMakeFiles/sim.dir/sim_init.cpp.o" \
"CMakeFiles/sim.dir/sim_close.cpp.o" \
"CMakeFiles/sim.dir/sim_load.cpp.o" \
"CMakeFiles/sim.dir/sim_fill.cpp.o" \
"CMakeFiles/sim.dir/sim_print.cpp.o" \
"CMakeFiles/sim.dir/sim_get_process.cpp.o" \
"CMakeFiles/sim.dir/sim_step.cpp.o" \
"CMakeFiles/sim.dir/sim_run.cpp.o"

# External object files for target sim
sim_EXTERNAL_OBJECTS =

/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a: group/sim/CMakeFiles/sim.dir/sim_init.cpp.o
/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a: group/sim/CMakeFiles/sim.dir/sim_close.cpp.o
/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a: group/sim/CMakeFiles/sim.dir/sim_load.cpp.o
/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a: group/sim/CMakeFiles/sim.dir/sim_fill.cpp.o
/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a: group/sim/CMakeFiles/sim.dir/sim_print.cpp.o
/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a: group/sim/CMakeFiles/sim.dir/sim_get_process.cpp.o
/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a: group/sim/CMakeFiles/sim.dir/sim_step.cpp.o
/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a: group/sim/CMakeFiles/sim.dir/sim_run.cpp.o
/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a: group/sim/CMakeFiles/sim.dir/build.make
/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a: group/sim/CMakeFiles/sim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a"
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && $(CMAKE_COMMAND) -P CMakeFiles/sim.dir/cmake_clean_target.cmake
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
group/sim/CMakeFiles/sim.dir/build: /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/lib/libsim.a

.PHONY : group/sim/CMakeFiles/sim.dir/build

group/sim/CMakeFiles/sim.dir/clean:
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim && $(CMAKE_COMMAND) -P CMakeFiles/sim.dir/cmake_clean.cmake
.PHONY : group/sim/CMakeFiles/sim.dir/clean

group/sim/CMakeFiles/sim.dir/depend:
	cd /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/src/group/sim /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim /home/gjscraveiro/Desktop/Uni/SO/SO_23_24/Proj/somm23-grp/build/group/sim/CMakeFiles/sim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : group/sim/CMakeFiles/sim.dir/depend

