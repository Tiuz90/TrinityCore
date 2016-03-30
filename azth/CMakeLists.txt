include("${CMAKE_CURRENT_LIST_DIR}/src/CMakeLists.txt")

if (EXISTS "${CMAKE_SOURCE_DIR}/azth_custom/CMakeLists.txt")
  include("${CMAKE_SOURCE_DIR}/azth_custom/CMakeLists.txt")
endif()
