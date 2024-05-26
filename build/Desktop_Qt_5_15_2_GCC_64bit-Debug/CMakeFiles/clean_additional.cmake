# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/logParser_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/logParser_autogen.dir/ParseCache.txt"
  "logParser_autogen"
  )
endif()
