
# ****************************************************************************/
# This is set to 2.8.11 to use the target_link_libraries command. In CMake 
# 2.8.11 and later versions, this command automatically adds appropriate 
# include directories, compile definitions, the position-independent-code flag, 
# and links to the qtmain.lib library on Windows.
# *****************************************************************************

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

PROJECT(behave)

OPTION(RAWS_BATCH "Enable Behave RAWS Data Batch Reader" OFF)
OPTION(TEST_BEHAVE "Enable Testing" OFF)
# optional stand-alone executables
OPTION(COMPUTE_SPOT_PILE "Build pile spot fire distance calculator" OFF)
OPTION(COMPUTE_SPOT_SURFACE "Build surface spot fire distance calculator" OFF)
OPTION(COMPUTE_SPOT_TORCHING_TREES "Build torching tree spot fire distance calculator" OFF)
