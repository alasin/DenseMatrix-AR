# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/kamikaze/CAR-DETECTION

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kamikaze/CAR-DETECTION

# Include any dependencies generated for this target.
include CMakeFiles/car_detect.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/car_detect.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/car_detect.dir/flags.make

CMakeFiles/car_detect.dir/car_detect.cpp.o: CMakeFiles/car_detect.dir/flags.make
CMakeFiles/car_detect.dir/car_detect.cpp.o: car_detect.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kamikaze/CAR-DETECTION/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/car_detect.dir/car_detect.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/car_detect.dir/car_detect.cpp.o -c /home/kamikaze/CAR-DETECTION/car_detect.cpp

CMakeFiles/car_detect.dir/car_detect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/car_detect.dir/car_detect.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kamikaze/CAR-DETECTION/car_detect.cpp > CMakeFiles/car_detect.dir/car_detect.cpp.i

CMakeFiles/car_detect.dir/car_detect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/car_detect.dir/car_detect.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kamikaze/CAR-DETECTION/car_detect.cpp -o CMakeFiles/car_detect.dir/car_detect.cpp.s

CMakeFiles/car_detect.dir/car_detect.cpp.o.requires:
.PHONY : CMakeFiles/car_detect.dir/car_detect.cpp.o.requires

CMakeFiles/car_detect.dir/car_detect.cpp.o.provides: CMakeFiles/car_detect.dir/car_detect.cpp.o.requires
	$(MAKE) -f CMakeFiles/car_detect.dir/build.make CMakeFiles/car_detect.dir/car_detect.cpp.o.provides.build
.PHONY : CMakeFiles/car_detect.dir/car_detect.cpp.o.provides

CMakeFiles/car_detect.dir/car_detect.cpp.o.provides.build: CMakeFiles/car_detect.dir/car_detect.cpp.o

# Object files for target car_detect
car_detect_OBJECTS = \
"CMakeFiles/car_detect.dir/car_detect.cpp.o"

# External object files for target car_detect
car_detect_EXTERNAL_OBJECTS =

car_detect: CMakeFiles/car_detect.dir/car_detect.cpp.o
car_detect: CMakeFiles/car_detect.dir/build.make
car_detect: /usr/local/lib/libopencv_xphoto.so.3.0.0
car_detect: /usr/local/lib/libopencv_xobjdetect.so.3.0.0
car_detect: /usr/local/lib/libopencv_ximgproc.so.3.0.0
car_detect: /usr/local/lib/libopencv_xfeatures2d.so.3.0.0
car_detect: /usr/local/lib/libopencv_tracking.so.3.0.0
car_detect: /usr/local/lib/libopencv_text.so.3.0.0
car_detect: /usr/local/lib/libopencv_surface_matching.so.3.0.0
car_detect: /usr/local/lib/libopencv_saliency.so.3.0.0
car_detect: /usr/local/lib/libopencv_rgbd.so.3.0.0
car_detect: /usr/local/lib/libopencv_reg.so.3.0.0
car_detect: /usr/local/lib/libopencv_optflow.so.3.0.0
car_detect: /usr/local/lib/libopencv_line_descriptor.so.3.0.0
car_detect: /usr/local/lib/libopencv_latentsvm.so.3.0.0
car_detect: /usr/local/lib/libopencv_face.so.3.0.0
car_detect: /usr/local/lib/libopencv_datasets.so.3.0.0
car_detect: /usr/local/lib/libopencv_ccalib.so.3.0.0
car_detect: /usr/local/lib/libopencv_bioinspired.so.3.0.0
car_detect: /usr/local/lib/libopencv_bgsegm.so.3.0.0
car_detect: /usr/local/lib/libopencv_adas.so.3.0.0
car_detect: /usr/local/lib/libopencv_viz.so.3.0.0
car_detect: /usr/local/lib/libopencv_videostab.so.3.0.0
car_detect: /usr/local/lib/libopencv_videoio.so.3.0.0
car_detect: /usr/local/lib/libopencv_video.so.3.0.0
car_detect: /usr/local/lib/libopencv_ts.a
car_detect: /usr/local/lib/libopencv_superres.so.3.0.0
car_detect: /usr/local/lib/libopencv_stitching.so.3.0.0
car_detect: /usr/local/lib/libopencv_shape.so.3.0.0
car_detect: /usr/local/lib/libopencv_photo.so.3.0.0
car_detect: /usr/local/lib/libopencv_objdetect.so.3.0.0
car_detect: /usr/local/lib/libopencv_ml.so.3.0.0
car_detect: /usr/local/lib/libopencv_imgproc.so.3.0.0
car_detect: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
car_detect: /usr/local/lib/libopencv_highgui.so.3.0.0
car_detect: /usr/local/lib/libopencv_flann.so.3.0.0
car_detect: /usr/local/lib/libopencv_features2d.so.3.0.0
car_detect: /usr/local/lib/libopencv_core.so.3.0.0
car_detect: /usr/local/lib/libopencv_calib3d.so.3.0.0
car_detect: /usr/local/lib/libopencv_text.so.3.0.0
car_detect: /usr/local/lib/libopencv_face.so.3.0.0
car_detect: /usr/local/lib/libopencv_xobjdetect.so.3.0.0
car_detect: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
car_detect: /usr/local/lib/libopencv_xfeatures2d.so.3.0.0
car_detect: /usr/local/lib/libopencv_shape.so.3.0.0
car_detect: /usr/local/lib/libopencv_video.so.3.0.0
car_detect: /usr/local/lib/libopencv_calib3d.so.3.0.0
car_detect: /usr/local/lib/libopencv_features2d.so.3.0.0
car_detect: /usr/local/lib/libopencv_ml.so.3.0.0
car_detect: /usr/local/lib/libopencv_highgui.so.3.0.0
car_detect: /usr/local/lib/libopencv_videoio.so.3.0.0
car_detect: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
car_detect: /usr/local/lib/libopencv_imgproc.so.3.0.0
car_detect: /usr/local/lib/libopencv_flann.so.3.0.0
car_detect: /usr/local/lib/libopencv_core.so.3.0.0
car_detect: CMakeFiles/car_detect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable car_detect"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/car_detect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/car_detect.dir/build: car_detect
.PHONY : CMakeFiles/car_detect.dir/build

CMakeFiles/car_detect.dir/requires: CMakeFiles/car_detect.dir/car_detect.cpp.o.requires
.PHONY : CMakeFiles/car_detect.dir/requires

CMakeFiles/car_detect.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/car_detect.dir/cmake_clean.cmake
.PHONY : CMakeFiles/car_detect.dir/clean

CMakeFiles/car_detect.dir/depend:
	cd /home/kamikaze/CAR-DETECTION && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kamikaze/CAR-DETECTION /home/kamikaze/CAR-DETECTION /home/kamikaze/CAR-DETECTION /home/kamikaze/CAR-DETECTION /home/kamikaze/CAR-DETECTION/CMakeFiles/car_detect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/car_detect.dir/depend

