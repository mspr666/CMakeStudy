# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\Computerprogram\cmake\bin\cmake.exe

# The command to remove a file.
RM = D:\Computerprogram\cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\mycode\cmakeCode\FirstCmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\mycode\cmakeCode\FirstCmake\build

# Include any dependencies generated for this target.
include CMakeFiles\main.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles\main.dir\compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles\main.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\main.dir\flags.make

CMakeFiles\main.dir\main.cpp.obj: CMakeFiles\main.dir\flags.make
CMakeFiles\main.dir\main.cpp.obj: D:\mycode\cmakeCode\FirstCmake\main.cpp
CMakeFiles\main.dir\main.cpp.obj: CMakeFiles\main.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\mycode\cmakeCode\FirstCmake\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/main.cpp.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\main.dir\main.cpp.obj.d --working-dir=D:\mycode\cmakeCode\FirstCmake\build --filter-prefix="ע��: �����ļ�:  " -- C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles\main.dir\main.cpp.obj /FdCMakeFiles\main.dir\ /FS -c D:\mycode\cmakeCode\FirstCmake\main.cpp
<<

CMakeFiles\main.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\main.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\mycode\cmakeCode\FirstCmake\main.cpp
<<

CMakeFiles\main.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\main.dir\main.cpp.s /c D:\mycode\cmakeCode\FirstCmake\main.cpp
<<

# Object files for target main
main_OBJECTS = \
"CMakeFiles\main.dir\main.cpp.obj"

# External object files for target main
main_EXTERNAL_OBJECTS =

main.exe: CMakeFiles\main.dir\main.cpp.obj
main.exe: CMakeFiles\main.dir\build.make
main.exe: CMakeFiles\main.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\mycode\cmakeCode\FirstCmake\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main.exe"
	D:\Computerprogram\cmake\bin\cmake.exe -E vs_link_exe --intdir=CMakeFiles\main.dir --rc="D:\Windows Kits\10\bin\10.0.17763.0\x86\rc.exe" --mt="D:\Windows Kits\10\bin\10.0.17763.0\x86\mt.exe" --manifests -- C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\main.dir\objects1.rsp @<<
 /out:main.exe /implib:main.lib /pdb:D:\mycode\cmakeCode\FirstCmake\build\main.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\main.dir\build: main.exe
.PHONY : CMakeFiles\main.dir\build

CMakeFiles\main.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\main.dir\cmake_clean.cmake
.PHONY : CMakeFiles\main.dir\clean

CMakeFiles\main.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\mycode\cmakeCode\FirstCmake D:\mycode\cmakeCode\FirstCmake D:\mycode\cmakeCode\FirstCmake\build D:\mycode\cmakeCode\FirstCmake\build D:\mycode\cmakeCode\FirstCmake\build\CMakeFiles\main.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\main.dir\depend

