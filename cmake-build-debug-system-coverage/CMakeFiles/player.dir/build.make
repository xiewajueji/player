# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/weihan/CLionProjects/player

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage

# Include any dependencies generated for this target.
include CMakeFiles/player.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/player.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/player.dir/flags.make

CMakeFiles/player.dir/src/common/Config.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/common/Config.cpp.o: ../src/common/Config.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/player.dir/src/common/Config.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/common/Config.cpp.o -c /Users/weihan/CLionProjects/player/src/common/Config.cpp

CMakeFiles/player.dir/src/common/Config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/common/Config.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/common/Config.cpp > CMakeFiles/player.dir/src/common/Config.cpp.i

CMakeFiles/player.dir/src/common/Config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/common/Config.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/common/Config.cpp -o CMakeFiles/player.dir/src/common/Config.cpp.s

CMakeFiles/player.dir/src/common/DefaultConfig.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/common/DefaultConfig.cpp.o: ../src/common/DefaultConfig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/player.dir/src/common/DefaultConfig.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/common/DefaultConfig.cpp.o -c /Users/weihan/CLionProjects/player/src/common/DefaultConfig.cpp

CMakeFiles/player.dir/src/common/DefaultConfig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/common/DefaultConfig.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/common/DefaultConfig.cpp > CMakeFiles/player.dir/src/common/DefaultConfig.cpp.i

CMakeFiles/player.dir/src/common/DefaultConfig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/common/DefaultConfig.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/common/DefaultConfig.cpp -o CMakeFiles/player.dir/src/common/DefaultConfig.cpp.s

CMakeFiles/player.dir/src/core/PlayerContext.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/core/PlayerContext.cpp.o: ../src/core/PlayerContext.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/player.dir/src/core/PlayerContext.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/core/PlayerContext.cpp.o -c /Users/weihan/CLionProjects/player/src/core/PlayerContext.cpp

CMakeFiles/player.dir/src/core/PlayerContext.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/core/PlayerContext.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/core/PlayerContext.cpp > CMakeFiles/player.dir/src/core/PlayerContext.cpp.i

CMakeFiles/player.dir/src/core/PlayerContext.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/core/PlayerContext.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/core/PlayerContext.cpp -o CMakeFiles/player.dir/src/core/PlayerContext.cpp.s

CMakeFiles/player.dir/src/core/PlayList.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/core/PlayList.cpp.o: ../src/core/PlayList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/player.dir/src/core/PlayList.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/core/PlayList.cpp.o -c /Users/weihan/CLionProjects/player/src/core/PlayList.cpp

CMakeFiles/player.dir/src/core/PlayList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/core/PlayList.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/core/PlayList.cpp > CMakeFiles/player.dir/src/core/PlayList.cpp.i

CMakeFiles/player.dir/src/core/PlayList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/core/PlayList.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/core/PlayList.cpp -o CMakeFiles/player.dir/src/core/PlayList.cpp.s

CMakeFiles/player.dir/src/core/PlayEntry.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/core/PlayEntry.cpp.o: ../src/core/PlayEntry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/player.dir/src/core/PlayEntry.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/core/PlayEntry.cpp.o -c /Users/weihan/CLionProjects/player/src/core/PlayEntry.cpp

CMakeFiles/player.dir/src/core/PlayEntry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/core/PlayEntry.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/core/PlayEntry.cpp > CMakeFiles/player.dir/src/core/PlayEntry.cpp.i

CMakeFiles/player.dir/src/core/PlayEntry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/core/PlayEntry.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/core/PlayEntry.cpp -o CMakeFiles/player.dir/src/core/PlayEntry.cpp.s

CMakeFiles/player.dir/src/video/VideoOutput.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/video/VideoOutput.cpp.o: ../src/video/VideoOutput.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/player.dir/src/video/VideoOutput.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/video/VideoOutput.cpp.o -c /Users/weihan/CLionProjects/player/src/video/VideoOutput.cpp

CMakeFiles/player.dir/src/video/VideoOutput.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/video/VideoOutput.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/video/VideoOutput.cpp > CMakeFiles/player.dir/src/video/VideoOutput.cpp.i

CMakeFiles/player.dir/src/video/VideoOutput.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/video/VideoOutput.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/video/VideoOutput.cpp -o CMakeFiles/player.dir/src/video/VideoOutput.cpp.s

CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.o: ../src/video/driver/DriverFactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.o -c /Users/weihan/CLionProjects/player/src/video/driver/DriverFactory.cpp

CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/video/driver/DriverFactory.cpp > CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.i

CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/video/driver/DriverFactory.cpp -o CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.s

CMakeFiles/player.dir/src/video/driver/Driver.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/video/driver/Driver.cpp.o: ../src/video/driver/Driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/player.dir/src/video/driver/Driver.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/video/driver/Driver.cpp.o -c /Users/weihan/CLionProjects/player/src/video/driver/Driver.cpp

CMakeFiles/player.dir/src/video/driver/Driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/video/driver/Driver.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/video/driver/Driver.cpp > CMakeFiles/player.dir/src/video/driver/Driver.cpp.i

CMakeFiles/player.dir/src/video/driver/Driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/video/driver/Driver.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/video/driver/Driver.cpp -o CMakeFiles/player.dir/src/video/driver/Driver.cpp.s

CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.o: ../src/video/driver/DriverSDL.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.o -c /Users/weihan/CLionProjects/player/src/video/driver/DriverSDL.cpp

CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/video/driver/DriverSDL.cpp > CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.i

CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/video/driver/DriverSDL.cpp -o CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.s

CMakeFiles/player.dir/src/input/InputContext.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/input/InputContext.cpp.o: ../src/input/InputContext.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/player.dir/src/input/InputContext.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/input/InputContext.cpp.o -c /Users/weihan/CLionProjects/player/src/input/InputContext.cpp

CMakeFiles/player.dir/src/input/InputContext.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/input/InputContext.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/input/InputContext.cpp > CMakeFiles/player.dir/src/input/InputContext.cpp.i

CMakeFiles/player.dir/src/input/InputContext.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/input/InputContext.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/input/InputContext.cpp -o CMakeFiles/player.dir/src/input/InputContext.cpp.s

CMakeFiles/player.dir/src/demux/Demuxer.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/demux/Demuxer.cpp.o: ../src/demux/Demuxer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/player.dir/src/demux/Demuxer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/demux/Demuxer.cpp.o -c /Users/weihan/CLionProjects/player/src/demux/Demuxer.cpp

CMakeFiles/player.dir/src/demux/Demuxer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/demux/Demuxer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/demux/Demuxer.cpp > CMakeFiles/player.dir/src/demux/Demuxer.cpp.i

CMakeFiles/player.dir/src/demux/Demuxer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/demux/Demuxer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/demux/Demuxer.cpp -o CMakeFiles/player.dir/src/demux/Demuxer.cpp.s

CMakeFiles/player.dir/src/demux/Stream.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/demux/Stream.cpp.o: ../src/demux/Stream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/player.dir/src/demux/Stream.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/demux/Stream.cpp.o -c /Users/weihan/CLionProjects/player/src/demux/Stream.cpp

CMakeFiles/player.dir/src/demux/Stream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/demux/Stream.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/demux/Stream.cpp > CMakeFiles/player.dir/src/demux/Stream.cpp.i

CMakeFiles/player.dir/src/demux/Stream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/demux/Stream.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/demux/Stream.cpp -o CMakeFiles/player.dir/src/demux/Stream.cpp.s

CMakeFiles/player.dir/src/demux/Frame.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/demux/Frame.cpp.o: ../src/demux/Frame.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/player.dir/src/demux/Frame.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/demux/Frame.cpp.o -c /Users/weihan/CLionProjects/player/src/demux/Frame.cpp

CMakeFiles/player.dir/src/demux/Frame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/demux/Frame.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/demux/Frame.cpp > CMakeFiles/player.dir/src/demux/Frame.cpp.i

CMakeFiles/player.dir/src/demux/Frame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/demux/Frame.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/demux/Frame.cpp -o CMakeFiles/player.dir/src/demux/Frame.cpp.s

CMakeFiles/player.dir/src/demux/DemuxContext.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/demux/DemuxContext.cpp.o: ../src/demux/DemuxContext.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/player.dir/src/demux/DemuxContext.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/demux/DemuxContext.cpp.o -c /Users/weihan/CLionProjects/player/src/demux/DemuxContext.cpp

CMakeFiles/player.dir/src/demux/DemuxContext.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/demux/DemuxContext.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/demux/DemuxContext.cpp > CMakeFiles/player.dir/src/demux/DemuxContext.cpp.i

CMakeFiles/player.dir/src/demux/DemuxContext.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/demux/DemuxContext.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/demux/DemuxContext.cpp -o CMakeFiles/player.dir/src/demux/DemuxContext.cpp.s

CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.o: ../src/demux/filter/FrameFilterBase.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.o -c /Users/weihan/CLionProjects/player/src/demux/filter/FrameFilterBase.cpp

CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/demux/filter/FrameFilterBase.cpp > CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.i

CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/demux/filter/FrameFilterBase.cpp -o CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.s

CMakeFiles/player.dir/src/demux/filter/Blit.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/demux/filter/Blit.cpp.o: ../src/demux/filter/Blit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/player.dir/src/demux/filter/Blit.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/demux/filter/Blit.cpp.o -c /Users/weihan/CLionProjects/player/src/demux/filter/Blit.cpp

CMakeFiles/player.dir/src/demux/filter/Blit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/demux/filter/Blit.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/demux/filter/Blit.cpp > CMakeFiles/player.dir/src/demux/filter/Blit.cpp.i

CMakeFiles/player.dir/src/demux/filter/Blit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/demux/filter/Blit.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/demux/filter/Blit.cpp -o CMakeFiles/player.dir/src/demux/filter/Blit.cpp.s

CMakeFiles/player.dir/src/demux/filter/Fill.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/demux/filter/Fill.cpp.o: ../src/demux/filter/Fill.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/player.dir/src/demux/filter/Fill.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/demux/filter/Fill.cpp.o -c /Users/weihan/CLionProjects/player/src/demux/filter/Fill.cpp

CMakeFiles/player.dir/src/demux/filter/Fill.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/demux/filter/Fill.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/demux/filter/Fill.cpp > CMakeFiles/player.dir/src/demux/filter/Fill.cpp.i

CMakeFiles/player.dir/src/demux/filter/Fill.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/demux/filter/Fill.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/demux/filter/Fill.cpp -o CMakeFiles/player.dir/src/demux/filter/Fill.cpp.s

CMakeFiles/player.dir/src/main.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/player.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/main.cpp.o -c /Users/weihan/CLionProjects/player/src/main.cpp

CMakeFiles/player.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/main.cpp > CMakeFiles/player.dir/src/main.cpp.i

CMakeFiles/player.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/main.cpp -o CMakeFiles/player.dir/src/main.cpp.s

CMakeFiles/player.dir/src/osal/main_osx.cpp.o: CMakeFiles/player.dir/flags.make
CMakeFiles/player.dir/src/osal/main_osx.cpp.o: ../src/osal/main_osx.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/player.dir/src/osal/main_osx.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/player.dir/src/osal/main_osx.cpp.o -c /Users/weihan/CLionProjects/player/src/osal/main_osx.cpp

CMakeFiles/player.dir/src/osal/main_osx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player.dir/src/osal/main_osx.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/weihan/CLionProjects/player/src/osal/main_osx.cpp > CMakeFiles/player.dir/src/osal/main_osx.cpp.i

CMakeFiles/player.dir/src/osal/main_osx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player.dir/src/osal/main_osx.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/weihan/CLionProjects/player/src/osal/main_osx.cpp -o CMakeFiles/player.dir/src/osal/main_osx.cpp.s

# Object files for target player
player_OBJECTS = \
"CMakeFiles/player.dir/src/common/Config.cpp.o" \
"CMakeFiles/player.dir/src/common/DefaultConfig.cpp.o" \
"CMakeFiles/player.dir/src/core/PlayerContext.cpp.o" \
"CMakeFiles/player.dir/src/core/PlayList.cpp.o" \
"CMakeFiles/player.dir/src/core/PlayEntry.cpp.o" \
"CMakeFiles/player.dir/src/video/VideoOutput.cpp.o" \
"CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.o" \
"CMakeFiles/player.dir/src/video/driver/Driver.cpp.o" \
"CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.o" \
"CMakeFiles/player.dir/src/input/InputContext.cpp.o" \
"CMakeFiles/player.dir/src/demux/Demuxer.cpp.o" \
"CMakeFiles/player.dir/src/demux/Stream.cpp.o" \
"CMakeFiles/player.dir/src/demux/Frame.cpp.o" \
"CMakeFiles/player.dir/src/demux/DemuxContext.cpp.o" \
"CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.o" \
"CMakeFiles/player.dir/src/demux/filter/Blit.cpp.o" \
"CMakeFiles/player.dir/src/demux/filter/Fill.cpp.o" \
"CMakeFiles/player.dir/src/main.cpp.o" \
"CMakeFiles/player.dir/src/osal/main_osx.cpp.o"

# External object files for target player
player_EXTERNAL_OBJECTS =

player: CMakeFiles/player.dir/src/common/Config.cpp.o
player: CMakeFiles/player.dir/src/common/DefaultConfig.cpp.o
player: CMakeFiles/player.dir/src/core/PlayerContext.cpp.o
player: CMakeFiles/player.dir/src/core/PlayList.cpp.o
player: CMakeFiles/player.dir/src/core/PlayEntry.cpp.o
player: CMakeFiles/player.dir/src/video/VideoOutput.cpp.o
player: CMakeFiles/player.dir/src/video/driver/DriverFactory.cpp.o
player: CMakeFiles/player.dir/src/video/driver/Driver.cpp.o
player: CMakeFiles/player.dir/src/video/driver/DriverSDL.cpp.o
player: CMakeFiles/player.dir/src/input/InputContext.cpp.o
player: CMakeFiles/player.dir/src/demux/Demuxer.cpp.o
player: CMakeFiles/player.dir/src/demux/Stream.cpp.o
player: CMakeFiles/player.dir/src/demux/Frame.cpp.o
player: CMakeFiles/player.dir/src/demux/DemuxContext.cpp.o
player: CMakeFiles/player.dir/src/demux/filter/FrameFilterBase.cpp.o
player: CMakeFiles/player.dir/src/demux/filter/Blit.cpp.o
player: CMakeFiles/player.dir/src/demux/filter/Fill.cpp.o
player: CMakeFiles/player.dir/src/main.cpp.o
player: CMakeFiles/player.dir/src/osal/main_osx.cpp.o
player: CMakeFiles/player.dir/build.make
player: /usr/local/lib/libglog.0.4.0.dylib
player: /usr/local/lib/libgflags.2.2.2.dylib
player: /usr/local/Cellar/sdl2/2.0.12_1/lib/libSDL2.dylib
player: /usr/local/lib/libfolly.dylib
player: /usr/local/lib/libfmt.7.0.3.dylib
player: /usr/local/lib/libboost_context-mt.dylib
player: /usr/local/lib/libboost_filesystem-mt.dylib
player: /usr/local/lib/libboost_program_options-mt.dylib
player: /usr/local/lib/libboost_regex-mt.dylib
player: /usr/local/lib/libboost_system-mt.dylib
player: /usr/local/lib/libboost_thread-mt.dylib
player: /usr/local/lib/libdouble-conversion.a
player: /usr/local/lib/libgflags.2.2.2.dylib
player: /usr/local/lib/libglog.dylib
player: /usr/local/lib/libevent.dylib
player: /Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/lib/libz.tbd
player: /usr/local/opt/openssl@1.1/lib/libssl.dylib
player: /usr/local/opt/openssl@1.1/lib/libcrypto.dylib
player: /Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/lib/libbz2.tbd
player: /usr/local/lib/liblz4.dylib
player: /usr/local/lib/libzstd.dylib
player: /usr/local/lib/libsnappy.dylib
player: CMakeFiles/player.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX executable player"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/player.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/player.dir/build: player

.PHONY : CMakeFiles/player.dir/build

CMakeFiles/player.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/player.dir/cmake_clean.cmake
.PHONY : CMakeFiles/player.dir/clean

CMakeFiles/player.dir/depend:
	cd /Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/weihan/CLionProjects/player /Users/weihan/CLionProjects/player /Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage /Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage /Users/weihan/CLionProjects/player/cmake-build-debug-system-coverage/CMakeFiles/player.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/player.dir/depend

