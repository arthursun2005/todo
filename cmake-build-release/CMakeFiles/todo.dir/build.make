# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/arthur/work/code/todo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/arthur/work/code/todo/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/todo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/todo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/todo.dir/flags.make

CMakeFiles/todo.dir/main.cxx.o: CMakeFiles/todo.dir/flags.make
CMakeFiles/todo.dir/main.cxx.o: ../main.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/arthur/work/code/todo/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/todo.dir/main.cxx.o"
	/usr/local/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/todo.dir/main.cxx.o -c /Users/arthur/work/code/todo/main.cxx

CMakeFiles/todo.dir/main.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/todo.dir/main.cxx.i"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/arthur/work/code/todo/main.cxx > CMakeFiles/todo.dir/main.cxx.i

CMakeFiles/todo.dir/main.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/todo.dir/main.cxx.s"
	/usr/local/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/arthur/work/code/todo/main.cxx -o CMakeFiles/todo.dir/main.cxx.s

# Object files for target todo
todo_OBJECTS = \
"CMakeFiles/todo.dir/main.cxx.o"

# External object files for target todo
todo_EXTERNAL_OBJECTS =

todo: CMakeFiles/todo.dir/main.cxx.o
todo: CMakeFiles/todo.dir/build.make
todo: CMakeFiles/todo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/arthur/work/code/todo/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable todo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/todo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/todo.dir/build: todo

.PHONY : CMakeFiles/todo.dir/build

CMakeFiles/todo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/todo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/todo.dir/clean

CMakeFiles/todo.dir/depend:
	cd /Users/arthur/work/code/todo/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/arthur/work/code/todo /Users/arthur/work/code/todo /Users/arthur/work/code/todo/cmake-build-release /Users/arthur/work/code/todo/cmake-build-release /Users/arthur/work/code/todo/cmake-build-release/CMakeFiles/todo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/todo.dir/depend

