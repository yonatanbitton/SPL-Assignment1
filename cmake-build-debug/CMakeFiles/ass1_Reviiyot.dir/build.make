# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /home/yonatanbitton/IDEs/clion-2016.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/yonatanbitton/IDEs/clion-2016.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yonatanbitton/workspace/spl/ass1-Reviiyot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ass1_Reviiyot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ass1_Reviiyot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ass1_Reviiyot.dir/flags.make

CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o: CMakeFiles/ass1_Reviiyot.dir/flags.make
CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o: ../src/Card.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o -c /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Card.cpp

CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Card.cpp > CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.i

CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Card.cpp -o CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.s

CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o.requires:

.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o.requires

CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o.provides: CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o.requires
	$(MAKE) -f CMakeFiles/ass1_Reviiyot.dir/build.make CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o.provides.build
.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o.provides

CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o.provides.build: CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o


CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o: CMakeFiles/ass1_Reviiyot.dir/flags.make
CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o: ../src/Deck.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o -c /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Deck.cpp

CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Deck.cpp > CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.i

CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Deck.cpp -o CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.s

CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o.requires:

.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o.requires

CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o.provides: CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o.requires
	$(MAKE) -f CMakeFiles/ass1_Reviiyot.dir/build.make CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o.provides.build
.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o.provides

CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o.provides.build: CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o


CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o: CMakeFiles/ass1_Reviiyot.dir/flags.make
CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o: ../src/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o -c /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Game.cpp

CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Game.cpp > CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.i

CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Game.cpp -o CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.s

CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o.requires:

.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o.requires

CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o.provides: CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o.requires
	$(MAKE) -f CMakeFiles/ass1_Reviiyot.dir/build.make CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o.provides.build
.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o.provides

CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o.provides.build: CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o


CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o: CMakeFiles/ass1_Reviiyot.dir/flags.make
CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o: ../src/Hand.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o -c /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Hand.cpp

CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Hand.cpp > CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.i

CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Hand.cpp -o CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.s

CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o.requires:

.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o.requires

CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o.provides: CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o.requires
	$(MAKE) -f CMakeFiles/ass1_Reviiyot.dir/build.make CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o.provides.build
.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o.provides

CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o.provides.build: CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o


CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o: CMakeFiles/ass1_Reviiyot.dir/flags.make
CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o: ../src/Player.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o -c /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Player.cpp

CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Player.cpp > CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.i

CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/Player.cpp -o CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.s

CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o.requires:

.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o.requires

CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o.provides: CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o.requires
	$(MAKE) -f CMakeFiles/ass1_Reviiyot.dir/build.make CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o.provides.build
.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o.provides

CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o.provides.build: CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o


CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o: CMakeFiles/ass1_Reviiyot.dir/flags.make
CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o: ../src/reviiyot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o -c /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/reviiyot.cpp

CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/reviiyot.cpp > CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.i

CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yonatanbitton/workspace/spl/ass1-Reviiyot/src/reviiyot.cpp -o CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.s

CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o.requires:

.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o.requires

CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o.provides: CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o.requires
	$(MAKE) -f CMakeFiles/ass1_Reviiyot.dir/build.make CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o.provides.build
.PHONY : CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o.provides

CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o.provides.build: CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o


# Object files for target ass1_Reviiyot
ass1_Reviiyot_OBJECTS = \
"CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o" \
"CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o" \
"CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o" \
"CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o" \
"CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o" \
"CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o"

# External object files for target ass1_Reviiyot
ass1_Reviiyot_EXTERNAL_OBJECTS =

ass1_Reviiyot: CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o
ass1_Reviiyot: CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o
ass1_Reviiyot: CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o
ass1_Reviiyot: CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o
ass1_Reviiyot: CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o
ass1_Reviiyot: CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o
ass1_Reviiyot: CMakeFiles/ass1_Reviiyot.dir/build.make
ass1_Reviiyot: CMakeFiles/ass1_Reviiyot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ass1_Reviiyot"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ass1_Reviiyot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ass1_Reviiyot.dir/build: ass1_Reviiyot

.PHONY : CMakeFiles/ass1_Reviiyot.dir/build

CMakeFiles/ass1_Reviiyot.dir/requires: CMakeFiles/ass1_Reviiyot.dir/src/Card.cpp.o.requires
CMakeFiles/ass1_Reviiyot.dir/requires: CMakeFiles/ass1_Reviiyot.dir/src/Deck.cpp.o.requires
CMakeFiles/ass1_Reviiyot.dir/requires: CMakeFiles/ass1_Reviiyot.dir/src/Game.cpp.o.requires
CMakeFiles/ass1_Reviiyot.dir/requires: CMakeFiles/ass1_Reviiyot.dir/src/Hand.cpp.o.requires
CMakeFiles/ass1_Reviiyot.dir/requires: CMakeFiles/ass1_Reviiyot.dir/src/Player.cpp.o.requires
CMakeFiles/ass1_Reviiyot.dir/requires: CMakeFiles/ass1_Reviiyot.dir/src/reviiyot.cpp.o.requires

.PHONY : CMakeFiles/ass1_Reviiyot.dir/requires

CMakeFiles/ass1_Reviiyot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ass1_Reviiyot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ass1_Reviiyot.dir/clean

CMakeFiles/ass1_Reviiyot.dir/depend:
	cd /home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yonatanbitton/workspace/spl/ass1-Reviiyot /home/yonatanbitton/workspace/spl/ass1-Reviiyot /home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug /home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug /home/yonatanbitton/workspace/spl/ass1-Reviiyot/cmake-build-debug/CMakeFiles/ass1_Reviiyot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ass1_Reviiyot.dir/depend

