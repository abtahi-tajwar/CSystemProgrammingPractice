# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alarm/CSystemProgrammingPractice

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alarm/CSystemProgrammingPractice/build

# Include any dependencies generated for this target.
include CMakeFiles/file.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/file.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/file.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/file.dir/flags.make

CMakeFiles/file.dir/codegen:
.PHONY : CMakeFiles/file.dir/codegen

CMakeFiles/file.dir/src/fileio/main.c.o: CMakeFiles/file.dir/flags.make
CMakeFiles/file.dir/src/fileio/main.c.o: /home/alarm/CSystemProgrammingPractice/src/fileio/main.c
CMakeFiles/file.dir/src/fileio/main.c.o: CMakeFiles/file.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/alarm/CSystemProgrammingPractice/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/file.dir/src/fileio/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/file.dir/src/fileio/main.c.o -MF CMakeFiles/file.dir/src/fileio/main.c.o.d -o CMakeFiles/file.dir/src/fileio/main.c.o -c /home/alarm/CSystemProgrammingPractice/src/fileio/main.c

CMakeFiles/file.dir/src/fileio/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/file.dir/src/fileio/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/alarm/CSystemProgrammingPractice/src/fileio/main.c > CMakeFiles/file.dir/src/fileio/main.c.i

CMakeFiles/file.dir/src/fileio/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/file.dir/src/fileio/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/alarm/CSystemProgrammingPractice/src/fileio/main.c -o CMakeFiles/file.dir/src/fileio/main.c.s

# Object files for target file
file_OBJECTS = \
"CMakeFiles/file.dir/src/fileio/main.c.o"

# External object files for target file
file_EXTERNAL_OBJECTS =

file: CMakeFiles/file.dir/src/fileio/main.c.o
file: CMakeFiles/file.dir/build.make
file: CMakeFiles/file.dir/compiler_depend.ts
file: CMakeFiles/file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/alarm/CSystemProgrammingPractice/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable file"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/file.dir/build: file
.PHONY : CMakeFiles/file.dir/build

CMakeFiles/file.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/file.dir/cmake_clean.cmake
.PHONY : CMakeFiles/file.dir/clean

CMakeFiles/file.dir/depend:
	cd /home/alarm/CSystemProgrammingPractice/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alarm/CSystemProgrammingPractice /home/alarm/CSystemProgrammingPractice /home/alarm/CSystemProgrammingPractice/build /home/alarm/CSystemProgrammingPractice/build /home/alarm/CSystemProgrammingPractice/build/CMakeFiles/file.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/file.dir/depend

