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
CMAKE_SOURCE_DIR = /home/mira/Desktop/c++file

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mira/Desktop/c++file

# Include any dependencies generated for this target.
include CMakeFiles/c++file.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/c++file.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/c++file.dir/flags.make

CMakeFiles/c++file.dir/main.cpp.o: CMakeFiles/c++file.dir/flags.make
CMakeFiles/c++file.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mira/Desktop/c++file/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/c++file.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/c++file.dir/main.cpp.o -c /home/mira/Desktop/c++file/main.cpp

CMakeFiles/c++file.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c++file.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mira/Desktop/c++file/main.cpp > CMakeFiles/c++file.dir/main.cpp.i

CMakeFiles/c++file.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c++file.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mira/Desktop/c++file/main.cpp -o CMakeFiles/c++file.dir/main.cpp.s

CMakeFiles/c++file.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/c++file.dir/main.cpp.o.requires

CMakeFiles/c++file.dir/main.cpp.o.provides: CMakeFiles/c++file.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/c++file.dir/build.make CMakeFiles/c++file.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/c++file.dir/main.cpp.o.provides

CMakeFiles/c++file.dir/main.cpp.o.provides.build: CMakeFiles/c++file.dir/main.cpp.o


# Object files for target c++file
c______file_OBJECTS = \
"CMakeFiles/c++file.dir/main.cpp.o"

# External object files for target c++file
c______file_EXTERNAL_OBJECTS =

c++file: CMakeFiles/c++file.dir/main.cpp.o
c++file: CMakeFiles/c++file.dir/build.make
c++file: CMakeFiles/c++file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mira/Desktop/c++file/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable c++file"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c++file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/c++file.dir/build: c++file

.PHONY : CMakeFiles/c++file.dir/build

CMakeFiles/c++file.dir/requires: CMakeFiles/c++file.dir/main.cpp.o.requires

.PHONY : CMakeFiles/c++file.dir/requires

CMakeFiles/c++file.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/c++file.dir/cmake_clean.cmake
.PHONY : CMakeFiles/c++file.dir/clean

CMakeFiles/c++file.dir/depend:
	cd /home/mira/Desktop/c++file && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mira/Desktop/c++file /home/mira/Desktop/c++file /home/mira/Desktop/c++file /home/mira/Desktop/c++file /home/mira/Desktop/c++file/CMakeFiles/c++file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/c++file.dir/depend

