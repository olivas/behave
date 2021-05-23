
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR}/include)

SET(SOURCE
    src/behave/behaveRun.cpp
    src/behave/behaveUnits.cpp
    src/behave/Contain.cpp
    src/behave/ContainAdapter.cpp
    src/behave/ContainForce.cpp
    src/behave/ContainForceAdapter.cpp
    src/behave/ContainResource.cpp
    src/behave/ContainSim.cpp
    src/behave/crown.cpp
    src/behave/crownInputs.cpp
    src/behave/fireSize.cpp
    src/behave/fuelModelSet.cpp
    src/behave/ignite.cpp
    src/behave/igniteInputs.cpp
    src/behave/newext.cpp
    src/behave/palmettoGallberry.cpp
    src/behave/randfuel.cpp
    src/behave/randthread.cpp
    src/behave/safety.cpp
    src/behave/spot.cpp
    src/behave/spotInputs.cpp
    src/behave/surface.cpp
    src/behave/surfaceFireReactionIntensity.cpp
    src/behave/surfaceFuelbedIntermediates.cpp
    src/behave/surfaceInputs.cpp
    src/behave/surfaceFire.cpp
    src/behave/surfaceTwoFuelModels.cpp
    src/behave/westernAspen.cpp
    src/behave/windAdjustmentFactor.cpp
    src/behave/windSpeedUtility.cpp)

SET(HEADERS
    include/behave/behaveRun.hpp
    include/behave/behaveUnits.hpp
    include/behave/Contain.hpp
    include/behave/ContainAdapter.hpp
    include/behave/ContainForce.hpp
    include/behave/ContainForceAdapter.hpp
    include/behave/ContainResource.hpp
    include/behave/ContainSim.hpp
    include/behave/crown.hpp
    include/behave/crownInputs.hpp
    include/behave/fireSize.hpp
    include/behave/fuelModelSet.hpp
    include/behave/ignite.hpp
    include/behave/igniteInputs.hpp
    include/behave/newext.hpp
    include/behave/palmettoGallberry.hpp
    include/behave/randfuel.hpp
    include/behave/randthread.hpp
    include/behave/safety.hpp
    include/behave/spot.hpp
    include/behave/spotInputs.hpp
    include/behave/surface.hpp
    include/behave/surfaceFireReactionIntensity.hpp
    include/behave/surfaceFuelbedIntermediates.hpp
    include/behave/surfaceInputs.hpp
    include/behave/surfaceFire.hpp
    include/behave/surfaceTwoFuelModels.hpp
    include/behave/westernAspen.hpp
    include/behave/windAdjustmentFactor.hpp
    include/behave/windSpeedUtility.hpp)

SOURCE_GROUP("Behave Core Source Files" FILES ${SOURCE})
SOURCE_GROUP("Behave Core Header Files" FILES ${HEADERS})

ADD_EXECUTABLE(behave_client
    ${SOURCE} 
    src/behave/client.cpp
    )

