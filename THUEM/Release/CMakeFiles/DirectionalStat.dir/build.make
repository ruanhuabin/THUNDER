# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /Share/home/yli/cmake/cmake-3.9.3/bin/cmake

# The command to remove a file.
RM = /Share/home/yli/cmake/cmake-3.9.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Share/home/yli/Thunder/THUEM-refactor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Share/home/yli/Thunder/THUEM-refactor/Release

# Include any dependencies generated for this target.
include CMakeFiles/DirectionalStat.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DirectionalStat.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DirectionalStat.dir/flags.make

CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o: CMakeFiles/DirectionalStat.dir/flags.make
CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o: ../testsrc/DirectionalStat.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Share/home/yli/Thunder/THUEM-refactor/Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o"
	/Share/system/openmpi-185/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o -c /Share/home/yli/Thunder/THUEM-refactor/testsrc/DirectionalStat.cpp

CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.i"
	/Share/system/openmpi-185/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Share/home/yli/Thunder/THUEM-refactor/testsrc/DirectionalStat.cpp > CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.i

CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.s"
	/Share/system/openmpi-185/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Share/home/yli/Thunder/THUEM-refactor/testsrc/DirectionalStat.cpp -o CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.s

CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o.requires:

.PHONY : CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o.requires

CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o.provides: CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o.requires
	$(MAKE) -f CMakeFiles/DirectionalStat.dir/build.make CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o.provides.build
.PHONY : CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o.provides

CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o.provides.build: CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o


# Object files for target DirectionalStat
DirectionalStat_OBJECTS = \
"CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o"

# External object files for target DirectionalStat
DirectionalStat_EXTERNAL_OBJECTS =

unittest/DirectionalStat: CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o
unittest/DirectionalStat: CMakeFiles/DirectionalStat.dir/build.make
unittest/DirectionalStat: /Share/home/yli/personSys/lib/libfftw3.so
unittest/DirectionalStat: /Share/home/yli/personSys/lib/libfftw3_threads.so
unittest/DirectionalStat: /Share/home/yli/personSys/lib/libgsl.so
unittest/DirectionalStat: /Share/home/yli/personSys/lib/libgslcblas.so
unittest/DirectionalStat: /usr/lib64/libm.so
unittest/DirectionalStat: libthuem.a
unittest/DirectionalStat: /Share/home/yli/personSys/lib/libfftw3.so
unittest/DirectionalStat: /Share/home/yli/personSys/lib/libfftw3_threads.so
unittest/DirectionalStat: /Share/home/yli/personSys/lib/libgsl.so
unittest/DirectionalStat: /Share/home/yli/personSys/lib/libgslcblas.so
unittest/DirectionalStat: /usr/lib64/libm.so
unittest/DirectionalStat: CMakeFiles/DirectionalStat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Share/home/yli/Thunder/THUEM-refactor/Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable unittest/DirectionalStat"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DirectionalStat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DirectionalStat.dir/build: unittest/DirectionalStat

.PHONY : CMakeFiles/DirectionalStat.dir/build

CMakeFiles/DirectionalStat.dir/requires: CMakeFiles/DirectionalStat.dir/testsrc/DirectionalStat.cpp.o.requires

.PHONY : CMakeFiles/DirectionalStat.dir/requires

CMakeFiles/DirectionalStat.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DirectionalStat.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DirectionalStat.dir/clean

CMakeFiles/DirectionalStat.dir/depend:
	cd /Share/home/yli/Thunder/THUEM-refactor/Release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Share/home/yli/Thunder/THUEM-refactor /Share/home/yli/Thunder/THUEM-refactor /Share/home/yli/Thunder/THUEM-refactor/Release /Share/home/yli/Thunder/THUEM-refactor/Release /Share/home/yli/Thunder/THUEM-refactor/Release/CMakeFiles/DirectionalStat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DirectionalStat.dir/depend
