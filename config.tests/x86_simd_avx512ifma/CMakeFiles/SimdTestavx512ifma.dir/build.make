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
CMAKE_BINARY_DIR = C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_avx512ifma

# Include any dependencies generated for this target.
include CMakeFiles/SimdTestavx512ifma.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SimdTestavx512ifma.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SimdTestavx512ifma.dir/flags.make

CMakeFiles/SimdTestavx512ifma.dir/main.cpp.obj: CMakeFiles/SimdTestavx512ifma.dir/flags.make
CMakeFiles/SimdTestavx512ifma.dir/main.cpp.obj: C:/Qt/6.0.3/Src/qtbase/config.tests/x86_simd/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_avx512ifma\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SimdTestavx512ifma.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SimdTestavx512ifma.dir\main.cpp.obj -c C:\Qt\6.0.3\Src\qtbase\config.tests\x86_simd\main.cpp

CMakeFiles/SimdTestavx512ifma.dir/main.cpp.i: cmake_force
	@echo Preprocessing CXX source to CMakeFiles/SimdTestavx512ifma.dir/main.cpp.i
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Qt\6.0.3\Src\qtbase\config.tests\x86_simd\main.cpp > CMakeFiles\SimdTestavx512ifma.dir\main.cpp.i

CMakeFiles/SimdTestavx512ifma.dir/main.cpp.s: cmake_force
	@echo Compiling CXX source to assembly CMakeFiles/SimdTestavx512ifma.dir/main.cpp.s
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Qt\6.0.3\Src\qtbase\config.tests\x86_simd\main.cpp -o CMakeFiles\SimdTestavx512ifma.dir\main.cpp.s

# Object files for target SimdTestavx512ifma
SimdTestavx512ifma_OBJECTS = \
"CMakeFiles/SimdTestavx512ifma.dir/main.cpp.obj"

# External object files for target SimdTestavx512ifma
SimdTestavx512ifma_EXTERNAL_OBJECTS =

SimdTestavx512ifma.exe: CMakeFiles/SimdTestavx512ifma.dir/main.cpp.obj
SimdTestavx512ifma.exe: CMakeFiles/SimdTestavx512ifma.dir/build.make
SimdTestavx512ifma.exe: CMakeFiles/SimdTestavx512ifma.dir/linklibs.rsp
SimdTestavx512ifma.exe: CMakeFiles/SimdTestavx512ifma.dir/objects1.rsp
SimdTestavx512ifma.exe: CMakeFiles/SimdTestavx512ifma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_avx512ifma\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SimdTestavx512ifma.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SimdTestavx512ifma.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SimdTestavx512ifma.dir/build: SimdTestavx512ifma.exe

.PHONY : CMakeFiles/SimdTestavx512ifma.dir/build

CMakeFiles/SimdTestavx512ifma.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SimdTestavx512ifma.dir\cmake_clean.cmake
.PHONY : CMakeFiles/SimdTestavx512ifma.dir/clean

CMakeFiles/SimdTestavx512ifma.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Qt\6.0.3\Src\qtbase\config.tests\x86_simd C:\Qt\6.0.3\Src\qtbase\config.tests\x86_simd C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_avx512ifma C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_avx512ifma C:\Users\mmokh\OneDrive\Documents\haptic-sensor-qt\config.tests\x86_simd_avx512ifma\CMakeFiles\SimdTestavx512ifma.dir\DependInfo.cmake
.PHONY : CMakeFiles/SimdTestavx512ifma.dir/depend
