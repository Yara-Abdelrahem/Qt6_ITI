# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appButtons_Images_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appButtons_Images_autogen.dir/ParseCache.txt"
  "appButtons_Images_autogen"
  )
endif()
