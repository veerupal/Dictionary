# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\veeru\Desktop\JOB

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\veeru\Desktop\JOB

# Include any dependencies generated for this target.
include CMakeFiles/Trie.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Trie.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Trie.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Trie.dir/flags.make

CMakeFiles/Trie.dir/Trie.cpp.obj: CMakeFiles/Trie.dir/flags.make
CMakeFiles/Trie.dir/Trie.cpp.obj: Trie.cpp
CMakeFiles/Trie.dir/Trie.cpp.obj: CMakeFiles/Trie.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\veeru\Desktop\JOB\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Trie.dir/Trie.cpp.obj"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Trie.dir/Trie.cpp.obj -MF CMakeFiles\Trie.dir\Trie.cpp.obj.d -o CMakeFiles\Trie.dir\Trie.cpp.obj -c C:\Users\veeru\Desktop\JOB\Trie.cpp

CMakeFiles/Trie.dir/Trie.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Trie.dir/Trie.cpp.i"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\veeru\Desktop\JOB\Trie.cpp > CMakeFiles\Trie.dir\Trie.cpp.i

CMakeFiles/Trie.dir/Trie.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Trie.dir/Trie.cpp.s"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\veeru\Desktop\JOB\Trie.cpp -o CMakeFiles\Trie.dir\Trie.cpp.s

# Object files for target Trie
Trie_OBJECTS = \
"CMakeFiles/Trie.dir/Trie.cpp.obj"

# External object files for target Trie
Trie_EXTERNAL_OBJECTS =

Trie.exe: CMakeFiles/Trie.dir/Trie.cpp.obj
Trie.exe: CMakeFiles/Trie.dir/build.make
Trie.exe: CMakeFiles/Trie.dir/linklibs.rsp
Trie.exe: CMakeFiles/Trie.dir/objects1.rsp
Trie.exe: CMakeFiles/Trie.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\veeru\Desktop\JOB\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Trie.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Trie.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Trie.dir/build: Trie.exe
.PHONY : CMakeFiles/Trie.dir/build

CMakeFiles/Trie.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Trie.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Trie.dir/clean

CMakeFiles/Trie.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\veeru\Desktop\JOB C:\Users\veeru\Desktop\JOB C:\Users\veeru\Desktop\JOB C:\Users\veeru\Desktop\JOB C:\Users\veeru\Desktop\JOB\CMakeFiles\Trie.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Trie.dir/depend

