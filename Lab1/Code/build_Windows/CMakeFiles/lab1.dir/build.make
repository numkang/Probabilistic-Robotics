# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/build_Windows

# Include any dependencies generated for this target.
include CMakeFiles/lab1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab1.dir/flags.make

CMakeFiles/lab1.dir/src/main.cpp.o: CMakeFiles/lab1.dir/flags.make
CMakeFiles/lab1.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/build_Windows/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab1.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab1.dir/src/main.cpp.o -c /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/main.cpp

CMakeFiles/lab1.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab1.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/main.cpp > CMakeFiles/lab1.dir/src/main.cpp.i

CMakeFiles/lab1.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab1.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/main.cpp -o CMakeFiles/lab1.dir/src/main.cpp.s

CMakeFiles/lab1.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/lab1.dir/src/main.cpp.o.requires

CMakeFiles/lab1.dir/src/main.cpp.o.provides: CMakeFiles/lab1.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/lab1.dir/build.make CMakeFiles/lab1.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/lab1.dir/src/main.cpp.o.provides

CMakeFiles/lab1.dir/src/main.cpp.o.provides.build: CMakeFiles/lab1.dir/src/main.cpp.o


CMakeFiles/lab1.dir/src/map.c.o: CMakeFiles/lab1.dir/flags.make
CMakeFiles/lab1.dir/src/map.c.o: ../src/map.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/build_Windows/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lab1.dir/src/map.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab1.dir/src/map.c.o   -c /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/map.c

CMakeFiles/lab1.dir/src/map.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab1.dir/src/map.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/map.c > CMakeFiles/lab1.dir/src/map.c.i

CMakeFiles/lab1.dir/src/map.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab1.dir/src/map.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/map.c -o CMakeFiles/lab1.dir/src/map.c.s

CMakeFiles/lab1.dir/src/map.c.o.requires:

.PHONY : CMakeFiles/lab1.dir/src/map.c.o.requires

CMakeFiles/lab1.dir/src/map.c.o.provides: CMakeFiles/lab1.dir/src/map.c.o.requires
	$(MAKE) -f CMakeFiles/lab1.dir/build.make CMakeFiles/lab1.dir/src/map.c.o.provides.build
.PHONY : CMakeFiles/lab1.dir/src/map.c.o.provides

CMakeFiles/lab1.dir/src/map.c.o.provides.build: CMakeFiles/lab1.dir/src/map.c.o


CMakeFiles/lab1.dir/src/sensor.c.o: CMakeFiles/lab1.dir/flags.make
CMakeFiles/lab1.dir/src/sensor.c.o: ../src/sensor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/build_Windows/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/lab1.dir/src/sensor.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab1.dir/src/sensor.c.o   -c /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/sensor.c

CMakeFiles/lab1.dir/src/sensor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab1.dir/src/sensor.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/sensor.c > CMakeFiles/lab1.dir/src/sensor.c.i

CMakeFiles/lab1.dir/src/sensor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab1.dir/src/sensor.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/sensor.c -o CMakeFiles/lab1.dir/src/sensor.c.s

CMakeFiles/lab1.dir/src/sensor.c.o.requires:

.PHONY : CMakeFiles/lab1.dir/src/sensor.c.o.requires

CMakeFiles/lab1.dir/src/sensor.c.o.provides: CMakeFiles/lab1.dir/src/sensor.c.o.requires
	$(MAKE) -f CMakeFiles/lab1.dir/build.make CMakeFiles/lab1.dir/src/sensor.c.o.provides.build
.PHONY : CMakeFiles/lab1.dir/src/sensor.c.o.provides

CMakeFiles/lab1.dir/src/sensor.c.o.provides.build: CMakeFiles/lab1.dir/src/sensor.c.o


CMakeFiles/lab1.dir/src/visualize.cpp.o: CMakeFiles/lab1.dir/flags.make
CMakeFiles/lab1.dir/src/visualize.cpp.o: ../src/visualize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/build_Windows/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/lab1.dir/src/visualize.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab1.dir/src/visualize.cpp.o -c /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/visualize.cpp

CMakeFiles/lab1.dir/src/visualize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab1.dir/src/visualize.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/visualize.cpp > CMakeFiles/lab1.dir/src/visualize.cpp.i

CMakeFiles/lab1.dir/src/visualize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab1.dir/src/visualize.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/visualize.cpp -o CMakeFiles/lab1.dir/src/visualize.cpp.s

CMakeFiles/lab1.dir/src/visualize.cpp.o.requires:

.PHONY : CMakeFiles/lab1.dir/src/visualize.cpp.o.requires

CMakeFiles/lab1.dir/src/visualize.cpp.o.provides: CMakeFiles/lab1.dir/src/visualize.cpp.o.requires
	$(MAKE) -f CMakeFiles/lab1.dir/build.make CMakeFiles/lab1.dir/src/visualize.cpp.o.provides.build
.PHONY : CMakeFiles/lab1.dir/src/visualize.cpp.o.provides

CMakeFiles/lab1.dir/src/visualize.cpp.o.provides.build: CMakeFiles/lab1.dir/src/visualize.cpp.o


CMakeFiles/lab1.dir/src/motion.cpp.o: CMakeFiles/lab1.dir/flags.make
CMakeFiles/lab1.dir/src/motion.cpp.o: ../src/motion.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/build_Windows/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/lab1.dir/src/motion.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab1.dir/src/motion.cpp.o -c /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/motion.cpp

CMakeFiles/lab1.dir/src/motion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab1.dir/src/motion.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/motion.cpp > CMakeFiles/lab1.dir/src/motion.cpp.i

CMakeFiles/lab1.dir/src/motion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab1.dir/src/motion.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/src/motion.cpp -o CMakeFiles/lab1.dir/src/motion.cpp.s

CMakeFiles/lab1.dir/src/motion.cpp.o.requires:

.PHONY : CMakeFiles/lab1.dir/src/motion.cpp.o.requires

CMakeFiles/lab1.dir/src/motion.cpp.o.provides: CMakeFiles/lab1.dir/src/motion.cpp.o.requires
	$(MAKE) -f CMakeFiles/lab1.dir/build.make CMakeFiles/lab1.dir/src/motion.cpp.o.provides.build
.PHONY : CMakeFiles/lab1.dir/src/motion.cpp.o.provides

CMakeFiles/lab1.dir/src/motion.cpp.o.provides.build: CMakeFiles/lab1.dir/src/motion.cpp.o


# Object files for target lab1
lab1_OBJECTS = \
"CMakeFiles/lab1.dir/src/main.cpp.o" \
"CMakeFiles/lab1.dir/src/map.c.o" \
"CMakeFiles/lab1.dir/src/sensor.c.o" \
"CMakeFiles/lab1.dir/src/visualize.cpp.o" \
"CMakeFiles/lab1.dir/src/motion.cpp.o"

# External object files for target lab1
lab1_EXTERNAL_OBJECTS =

../bin/lab1: CMakeFiles/lab1.dir/src/main.cpp.o
../bin/lab1: CMakeFiles/lab1.dir/src/map.c.o
../bin/lab1: CMakeFiles/lab1.dir/src/sensor.c.o
../bin/lab1: CMakeFiles/lab1.dir/src/visualize.cpp.o
../bin/lab1: CMakeFiles/lab1.dir/src/motion.cpp.o
../bin/lab1: CMakeFiles/lab1.dir/build.make
../bin/lab1: /usr/local/lib/libopencv_stitching.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_superres.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_videostab.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_aruco.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_bgsegm.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_bioinspired.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_ccalib.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_cvv.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_dpm.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_face.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_freetype.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_fuzzy.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_hdf.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_img_hash.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_line_descriptor.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_optflow.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_reg.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_rgbd.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_saliency.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_sfm.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_stereo.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_structured_light.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_surface_matching.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_tracking.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_xfeatures2d.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_ximgproc.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_xobjdetect.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_xphoto.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_photo.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_datasets.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_plot.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_text.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_dnn.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_ml.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_shape.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_video.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_calib3d.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_features2d.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_highgui.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_videoio.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_flann.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_imgcodecs.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_objdetect.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_imgproc.so.3.4.0
../bin/lab1: /usr/local/lib/libopencv_core.so.3.4.0
../bin/lab1: CMakeFiles/lab1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/build_Windows/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ../bin/lab1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab1.dir/build: ../bin/lab1

.PHONY : CMakeFiles/lab1.dir/build

CMakeFiles/lab1.dir/requires: CMakeFiles/lab1.dir/src/main.cpp.o.requires
CMakeFiles/lab1.dir/requires: CMakeFiles/lab1.dir/src/map.c.o.requires
CMakeFiles/lab1.dir/requires: CMakeFiles/lab1.dir/src/sensor.c.o.requires
CMakeFiles/lab1.dir/requires: CMakeFiles/lab1.dir/src/visualize.cpp.o.requires
CMakeFiles/lab1.dir/requires: CMakeFiles/lab1.dir/src/motion.cpp.o.requires

.PHONY : CMakeFiles/lab1.dir/requires

CMakeFiles/lab1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab1.dir/clean

CMakeFiles/lab1.dir/depend:
	cd /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/build_Windows && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/build_Windows /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/build_Windows /home/osboxes/Documents/Probabilistic-Robotics/Lab1/Code/build_Windows/CMakeFiles/lab1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab1.dir/depend

