
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

OPTION(TEST_BEHAVE "Enable Testing" ON)
OPTION(COVERAGE "Enable test coverage measurements" OFF)
OPTION(RAWS_BATCH "Enable Behave RAWS Data Batch Reader" OFF)
# optional stand-alone executables
OPTION(COMPUTE_SPOT_PILE "Build pile spot fire distance calculator" OFF)
OPTION(COMPUTE_SPOT_SURFACE "Build surface spot fire distance calculator" OFF)
OPTION(COMPUTE_SPOT_TORCHING_TREES "Build torching tree spot fire distance calculator" OFF)
