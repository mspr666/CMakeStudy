# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.24

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\Computerprogram\cmake\bin\cmake.exe

# The command to remove a file.
RM = D:\Computerprogram\cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\iLearing\CMakeStudy\thirdCMake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\iLearing\CMakeStudy\thirdCMake\build

# Include any dependencies generated for this target.
include CMakeFiles/Demo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Demo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Demo.dir/flags.make

CMakeFiles/Demo.dir/main.cpp.obj: CMakeFiles/Demo.dir/flags.make
CMakeFiles/Demo.dir/main.cpp.obj: E:/iLearing/CMakeStudy/thirdCMake/main.cpp
CMakeFiles/Demo.dir/main.cpp.obj: CMakeFiles/Demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\iLearing\CMakeStudy\thirdCMake\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Demo.dir/main.cpp.obj"
	D:\Tools\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Demo.dir/main.cpp.obj -MF CMakeFiles\Demo.dir\main.cpp.obj.d -o CMakeFiles\Demo.dir\main.cpp.obj -c E:\iLearing\CMakeStudy\thirdCMake\main.cpp

CMakeFiles/Demo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Demo.dir/main.cpp.i"
	D:\Tools\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\iLearing\CMakeStudy\thirdCMake\main.cpp > CMakeFiles\Demo.dir\main.cpp.i

CMakeFiles/Demo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Demo.dir/main.cpp.s"
	D:\Tools\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\iLearing\CMakeStudy\thirdCMake\main.cpp -o CMakeFiles\Demo.dir\main.cpp.s

# Object files for target Demo
Demo_OBJECTS = \
"CMakeFiles/Demo.dir/main.cpp.obj"

# External object files for target Demo
Demo_EXTERNAL_OBJECTS =

Demo.exe: CMakeFiles/Demo.dir/main.cpp.obj
Demo.exe: CMakeFiles/Demo.dir/build.make
Demo.exe: math/libMathFunctions.a
Demo.exe: CMakeFiles/Demo.dir/linklibs.rsp
Demo.exe: CMakeFiles/Demo.dir/objects1.rsp
Demo.exe: CMakeFiles/Demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\iLearing\CMakeStudy\thirdCMake\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Demo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Demo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Demo.dir/build: Demo.exe
.PHONY : CMakeFiles/Demo.dir/build

CMakeFiles/Demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Demo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Demo.dir/clean

CMakeFiles/Demo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\iLearing\CMakeStudy\thirdCMake E:\iLearing\CMakeStudy\thirdCMake E:\iLearing\CMakeStudy\thirdCMake\build E:\iLearing\CMakeStudy\thirdCMake\build E:\iLearing\CMakeStudy\thirdCMake\build\CMakeFiles\Demo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Demo.dir/depend

