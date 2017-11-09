cmake_minimum_required(VERSION 2.8.5 FATAL_ERROR)
project(thuem)

#-mkl flag added by huabin
set (COMMON_FLAGS "-Wall -Wno-uninitialized -Wno-deprecated-declarations -Wsign-compare -pthread -mkl ${ADDITIONAL_FLAGS}")
set (CMAKE_C_FLAGS "${COMMON_FLAGS} -fno-strict-aliasing")
set (CMAKE_CXX_FLAGS "${COMMON_FLAGS}")

if(NOT CMAKE_BUILD_TYPE)
    set (CMAKE_BUILD_TYPE Release)
endif()

option (SANITIZE "Turn on sanitization" OFF)
if (SANITIZE)
    set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")
    if (NOT APPLE)
        set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -lasan")
    endif()
endif()

option (SHENWEI "Build for SHENWEI architecture" OFF)
if (SHENWEI)
    add_definitions(-DSHENWEI=1)
endif()

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
#comment by huabin
#find_package(FFTW REQUIRED)
find_package(GSL REQUIRED)

#comment by huabin
#if (NOT SHENWEI)
    #include(CheckCXXCompilerFlag)
    #CHECK_CXX_COMPILER_FLAG("-fopenmp" HAS_OPENMP)
    
    #if (${HAS_OPENMP})
        #set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -qopenmp")
        #set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -qopenmp")
    #endif()
#endif()

#following two lines add by huabin
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -qopenmp -qopt-prefetch=4")
set(FFTW_INCLUDES "/opt/intel/compilers_and_libraries_2018.1.163/linux/mkl/include/fftw/")

message(STATUS "CXX_FLAGS: ${CMAKE_CXX_FLAGS}")
#message(STATUS "fftlib:${FFTW_LIBRARIES}")
#message(STATUS "gsllib:${GSL_LIBRARIES}")
#message(STATUS "globlib:${GLOG_LIBRARIES}")
#message(STATUS "fftopenmplib:${FFTWOMP_LIBRARIES}")
#message(STATUS "hasopenmp:${HAS_OPENMP}")
#message(STATUS "source dir:${PROJECT_SOURCE_DIR}")
#message(STATUS "fft include:${FFTW_INCLUDES}")

# includes and linker flags
include_directories(${FFTW_INCLUDES} ${GSL_INCLUDE_DIRS})

link_libraries(${FFTW_LIBRARIES} ${FFTWOMP_LIBRARIES} ${GSL_LIBRARIES} ${GLOG_LIBRARIES} ${CMAKE_DL_LIBS})

if (ADDITIONAL_LINKER_FLAGS)
    link_libraries(${ADDITIONAL_LINKER_FLAGS})
endif()

set (INCLUDE_BASE ${PROJECT_SOURCE_DIR}/include)
include_directories(${INCLUDE_BASE}/Functions ${INCLUDE_BASE}/Geometry ${INCLUDE_BASE}/ML ${INCLUDE_BASE}/Image ${INCLUDE_BASE})

set (EXTERNAL_DIR ${PROJECT_SOURCE_DIR}/external)
file (GLOB EXTERNAL_SUBDIR ${EXTERNAL_DIR}/*)
include_directories(${EXTERNAL_SUBDIR})

file(GLOB_RECURSE SOURCES ${EXTERNAL_DIR}/*.c ${EXTERNAL_DIR}/*.cpp ${PROJECT_SOURCE_DIR}/src/*.cpp)
add_library(thuem STATIC ${SOURCES})

# Libraries are compiled. Now compile the programs

link_libraries(thuem)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/unittest)
file(GLOB TEST_SOURCES ${PROJECT_SOURCE_DIR}/testsrc/*.cpp)
foreach (TSTSRC ${TEST_SOURCES})
    get_filename_component(TSTNAME ${TSTSRC} NAME_WE)
    add_executable(${TSTNAME} ${TSTSRC})
endforeach()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/app)
file(GLOB APP_SOURCES ${PROJECT_SOURCE_DIR}/appsrc/*.cpp)
foreach (APPSRC ${APP_SOURCES})
    get_filename_component(APPNAME ${APPSRC} NAME_WE)
    add_executable(${APPNAME} ${APPSRC})
endforeach()

file(GLOB_RECURSE CASE_SOURCES ${PROJECT_SOURCE_DIR}/casesrc/*.cpp)
foreach (CASESRC ${CASE_SOURCES})
    get_filename_component(CASENAME ${CASESRC} NAME_WE)
    get_filename_component(CASEDIR ${CASESRC} PATH)
    get_filename_component(CASECATEGORY ${CASEDIR} NAME)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/cases/${CASECATEGORY})
    add_executable(${CASENAME} ${CASESRC})
endforeach()
