# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = C:\Qt\Tools\CMake_64\bin\cmake.exe

# The command to remove a file.
RM = C:\Qt\Tools\CMake_64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Qt\6.0.3\Src\qtbase\config.tests\x86_simd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_sse3

# Include any dependencies generated for this target.
include CMakeFiles/SimdTestsse3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SimdTestsse3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SimdTestsse3.dir/flags.make

CMakeFiles/SimdTestsse3.dir/main.cpp.obj: CMakeFiles/SimdTestsse3.dir/flags.make
CMakeFiles/SimdTestsse3.dir/main.cpp.obj: C:/Qt/6.0.3/Src/qtbase/config.tests/x86_simd/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_sse3\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SimdTestsse3.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SimdTestsse3.dir\main.cpp.obj -c C:\Qt\6.0.3\Src\qtbase\config.tests\x86_simd\main.cpp

CMakeFiles/SimdTestsse3.dir/main.cpp.i: cmake_force
	@echo Preprocessing CXX source to CMakeFiles/SimdTestsse3.dir/main.cpp.i
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Qt\6.0.3\Src\qtbase\config.tests\x86_simd\main.cpp > CMakeFiles\SimdTestsse3.dir\main.cpp.i

CMakeFiles/SimdTestsse3.dir/main.cpp.s: cmake_force
	@echo Compiling CXX source to assembly CMakeFiles/SimdTestsse3.dir/main.cpp.s
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Qt\6.0.3\Src\qtbase\config.tests\x86_simd\main.cpp -o CMakeFiles\SimdTestsse3.dir\main.cpp.s

# Object files for target SimdTestsse3
SimdTestsse3_OBJECTS = \
"CMakeFiles/SimdTestsse3.dir/main.cpp.obj"

# External object files for target SimdTestsse3
SimdTestsse3_EXTERNAL_OBJECTS =

SimdTestsse3.exe: CMakeFiles/SimdTestsse3.dir/main.cpp.obj
SimdTestsse3.exe: CMakeFiles/SimdTestsse3.dir/build.make
SimdTestsse3.exe: CMakeFiles/SimdTestsse3.dir/linklibs.rsp
SimdTestsse3.exe: CMakeFiles/SimdTestsse3.dir/objects1.rsp
SimdTestsse3.exe: CMakeFiles/SimdTestsse3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_sse3\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SimdTestsse3.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SimdTestsse3.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SimdTestsse3.dir/build: SimdTestsse3.exe

.PHONY : CMakeFiles/SimdTestsse3.dir/build

CMakeFiles/SimdTestsse3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SimdTestsse3.dir\cmake_clean.cmake
.PHONY : CMakeFiles/SimdTestsse3.dir/clean

CMakeFiles/SimdTestsse3.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Qt\6.0.3\Src\qtbase\config.tests\x86_simd C:\Qt\6.0.3\Src\qtbase\config.tests\x86_simd C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_sse3 C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_sse3 C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_sse3\CMakeFiles\SimdTestsse3.dir\DependInfo.cmake
.PHONY : CMakeFiles/SimdTestsse3.dir/depend

