
IF(TEST_BEHAVE)
    enable_testing()
    SET(Boost_DEBUG ON) # get verbose info while trying to find Boost 
    SET(Boost_USE_STATIC_LIBS ON) # only find static libs

    FIND_PACKAGE(Boost REQUIRED)
    IF(Boost_FOUND)
        FIND_PACKAGE(Boost 1.61.0 COMPONENTS unit_test_framework REQUIRED)            
        INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIRS})
        SET(LINK_LIBS ${Boost_LIBRARIES})
        SET(BOOST_TEST_SOURCE src/testBehave/testBehave.cpp)            
        ADD_EXECUTABLE(testBehave 
            ${SOURCE}
            ${BOOST_TEST_SOURCE}
            ${HEADERS})
	ADD_TEST(behave_test testBehave)
        TARGET_LINK_LIBRARIES(testBehave ${Boost_LIBRARIES})
    ENDIF()
ENDIF()
