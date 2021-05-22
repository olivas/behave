
IF(COVERAGE)
  SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -O0 --coverage")
  SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -O0 --coverage")
  SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -g -O0 --coverage")    
  SET(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -g -O0 --coverage")
  SET(CMAKE_BUILD_TYPE "Debug")
  MESSAGE(STATUS "CMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}")
  ADD_CUSTOM_TARGET(coverage
    COMMAND make test
    COMMAND gcovr -r ../ --branches --html -o coverage.html .
    )
ENDIF()
