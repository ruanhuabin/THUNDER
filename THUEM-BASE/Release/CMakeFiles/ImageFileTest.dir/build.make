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
include CMakeFiles/ImageFileTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ImageFileTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ImageFileTest.dir/flags.make

CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o: CMakeFiles/ImageFileTest.dir/flags.make
CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o: ../testsrc/ImageFileTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Share/home/yli/Thunder/THUEM-refactor/Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o"
	/Share/system/openmpi-185/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o -c /Share/home/yli/Thunder/THUEM-refactor/testsrc/ImageFileTest.cpp

CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.i"
	/Share/system/openmpi-185/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Share/home/yli/Thunder/THUEM-refactor/testsrc/ImageFileTest.cpp > CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.i

CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.s"
	/Share/system/openmpi-185/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Share/home/yli/Thunder/THUEM-refactor/testsrc/ImageFileTest.cpp -o CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.s

CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o.requires:

.PHONY : CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o.requires

CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o.provides: CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o.requires
	$(MAKE) -f CMakeFiles/ImageFileTest.dir/build.make CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o.provides.build
.PHONY : CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o.provides

CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o.provides.build: CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o


# Object files for target ImageFileTest
ImageFileTest_OBJECTS = \
"CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o"

# External object files for target ImageFileTest
ImageFileTest_EXTERNAL_OBJECTS =

unittest/ImageFileTest: CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o
unittest/ImageFileTest: CMakeFiles/ImageFileTest.dir/build.make
unittest/ImageFileTest: /Share/home/yli/personSys/lib/libfftw3.so
unittest/ImageFileTest: /Share/home/yli/personSys/lib/libfftw3_threads.so
unittest/ImageFileTest: /Share/home/yli/personSys/lib/libgsl.so
unittest/ImageFileTest: /Share/home/yli/personSys/lib/libgslcblas.so
unittest/ImageFileTest: /usr/lib64/libm.so
unittest/ImageFileTest: libthuem.a
unittest/ImageFileTest: /Share/home/yli/personSys/lib/libfftw3.so
unittest/ImageFileTest: /Share/home/yli/personSys/lib/libfftw3_threads.so
unittest/ImageFileTest: /Share/home/yli/personSys/lib/libgsl.so
unittest/ImageFileTest: /Share/home/yli/personSys/lib/libgslcblas.so
unittest/ImageFileTest: /usr/lib64/libm.so
unittest/ImageFileTest: CMakeFiles/ImageFileTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Share/home/yli/Thunder/THUEM-refactor/Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable unittest/ImageFileTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ImageFileTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ImageFileTest.dir/build: unittest/ImageFileTest

.PHONY : CMakeFiles/ImageFileTest.dir/build

CMakeFiles/ImageFileTest.dir/requires: CMakeFiles/ImageFileTest.dir/testsrc/ImageFileTest.cpp.o.requires

.PHONY : CMakeFiles/ImageFileTest.dir/requires

CMakeFiles/ImageFileTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ImageFileTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ImageFileTest.dir/clean

CMakeFiles/ImageFileTest.dir/depend:
	cd /Share/home/yli/Thunder/THUEM-refactor/Release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Share/home/yli/Thunder/THUEM-refactor /Share/home/yli/Thunder/THUEM-refactor /Share/home/yli/Thunder/THUEM-refactor/Release /Share/home/yli/Thunder/THUEM-refactor/Release /Share/home/yli/Thunder/THUEM-refactor/Release/CMakeFiles/ImageFileTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ImageFileTest.dir/depend
