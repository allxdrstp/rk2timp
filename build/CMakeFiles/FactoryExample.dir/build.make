# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/alexandra/Папка

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alexandra/Папка/build

# Include any dependencies generated for this target.
include CMakeFiles/FactoryExample.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/FactoryExample.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/FactoryExample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FactoryExample.dir/flags.make

CMakeFiles/FactoryExample.dir/Factory.cpp.o: CMakeFiles/FactoryExample.dir/flags.make
CMakeFiles/FactoryExample.dir/Factory.cpp.o: ../Factory.cpp
CMakeFiles/FactoryExample.dir/Factory.cpp.o: CMakeFiles/FactoryExample.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alexandra/Папка/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FactoryExample.dir/Factory.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FactoryExample.dir/Factory.cpp.o -MF CMakeFiles/FactoryExample.dir/Factory.cpp.o.d -o CMakeFiles/FactoryExample.dir/Factory.cpp.o -c /home/alexandra/Папка/Factory.cpp

CMakeFiles/FactoryExample.dir/Factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FactoryExample.dir/Factory.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alexandra/Папка/Factory.cpp > CMakeFiles/FactoryExample.dir/Factory.cpp.i

CMakeFiles/FactoryExample.dir/Factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FactoryExample.dir/Factory.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alexandra/Папка/Factory.cpp -o CMakeFiles/FactoryExample.dir/Factory.cpp.s

# Object files for target FactoryExample
FactoryExample_OBJECTS = \
"CMakeFiles/FactoryExample.dir/Factory.cpp.o"

# External object files for target FactoryExample
FactoryExample_EXTERNAL_OBJECTS =

FactoryExample: CMakeFiles/FactoryExample.dir/Factory.cpp.o
FactoryExample: CMakeFiles/FactoryExample.dir/build.make
FactoryExample: libFactory.so
FactoryExample: CMakeFiles/FactoryExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alexandra/Папка/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FactoryExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FactoryExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FactoryExample.dir/build: FactoryExample
.PHONY : CMakeFiles/FactoryExample.dir/build

CMakeFiles/FactoryExample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FactoryExample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FactoryExample.dir/clean

CMakeFiles/FactoryExample.dir/depend:
	cd /home/alexandra/Папка/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alexandra/Папка /home/alexandra/Папка /home/alexandra/Папка/build /home/alexandra/Папка/build /home/alexandra/Папка/build/CMakeFiles/FactoryExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FactoryExample.dir/depend

