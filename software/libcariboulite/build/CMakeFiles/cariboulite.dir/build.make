# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/lib/python3.7/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python3.7/dist-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/projects/cariboulite/software/libcariboulite

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/projects/cariboulite/software/libcariboulite/build

# Include any dependencies generated for this target.
include CMakeFiles/cariboulite.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cariboulite.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cariboulite.dir/flags.make

CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.o: CMakeFiles/cariboulite.dir/flags.make
CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.o: ../src/cariboulite_setup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/projects/cariboulite/software/libcariboulite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.o -c /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_setup.c

CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_setup.c > CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.i

CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_setup.c -o CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.s

CMakeFiles/cariboulite.dir/src/cariboulite_events.c.o: CMakeFiles/cariboulite.dir/flags.make
CMakeFiles/cariboulite.dir/src/cariboulite_events.c.o: ../src/cariboulite_events.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/projects/cariboulite/software/libcariboulite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/cariboulite.dir/src/cariboulite_events.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cariboulite.dir/src/cariboulite_events.c.o -c /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_events.c

CMakeFiles/cariboulite.dir/src/cariboulite_events.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cariboulite.dir/src/cariboulite_events.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_events.c > CMakeFiles/cariboulite.dir/src/cariboulite_events.c.i

CMakeFiles/cariboulite.dir/src/cariboulite_events.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cariboulite.dir/src/cariboulite_events.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_events.c -o CMakeFiles/cariboulite.dir/src/cariboulite_events.c.s

CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.o: CMakeFiles/cariboulite.dir/flags.make
CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.o: ../src/cariboulite_radios.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/projects/cariboulite/software/libcariboulite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.o -c /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_radios.c

CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_radios.c > CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.i

CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/projects/cariboulite/software/libcariboulite/src/cariboulite_radios.c -o CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.s

# Object files for target cariboulite
cariboulite_OBJECTS = \
"CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.o" \
"CMakeFiles/cariboulite.dir/src/cariboulite_events.c.o" \
"CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.o"

# External object files for target cariboulite
cariboulite_EXTERNAL_OBJECTS =

libcariboulite.a: CMakeFiles/cariboulite.dir/src/cariboulite_setup.c.o
libcariboulite.a: CMakeFiles/cariboulite.dir/src/cariboulite_events.c.o
libcariboulite.a: CMakeFiles/cariboulite.dir/src/cariboulite_radios.c.o
libcariboulite.a: CMakeFiles/cariboulite.dir/build.make
libcariboulite.a: CMakeFiles/cariboulite.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/projects/cariboulite/software/libcariboulite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libcariboulite.a"
	$(CMAKE_COMMAND) -P CMakeFiles/cariboulite.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cariboulite.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cariboulite.dir/build: libcariboulite.a

.PHONY : CMakeFiles/cariboulite.dir/build

CMakeFiles/cariboulite.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cariboulite.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cariboulite.dir/clean

CMakeFiles/cariboulite.dir/depend:
	cd /home/pi/projects/cariboulite/software/libcariboulite/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/projects/cariboulite/software/libcariboulite /home/pi/projects/cariboulite/software/libcariboulite /home/pi/projects/cariboulite/software/libcariboulite/build /home/pi/projects/cariboulite/software/libcariboulite/build /home/pi/projects/cariboulite/software/libcariboulite/build/CMakeFiles/cariboulite.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cariboulite.dir/depend

