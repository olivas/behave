
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR}/src/behave)

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
    src/behave/behaveRun.h
    src/behave/behaveUnits.h
    src/behave/Contain.h
    src/behave/ContainAdapter.h
    src/behave/ContainForce.h
    src/behave/ContainForceAdapter.h
    src/behave/ContainResource.h
    src/behave/ContainSim.h
    src/behave/crown.h
    src/behave/crownInputs.h
    src/behave/fireSize.h
    src/behave/fuelModelSet.h
    src/behave/ignite.h
    src/behave/igniteInputs.h
    src/behave/newext.h
    src/behave/palmettoGallberry.h
    src/behave/randfuel.h
    src/behave/randthread.h
    src/behave/safety.h
    src/behave/spot.h
    src/behave/spotInputs.h
    src/behave/surface.h
    src/behave/surfaceFireReactionIntensity.h
    src/behave/surfaceFuelbedIntermediates.h
    src/behave/surfaceInputs.h
    src/behave/surfaceFire.h
    src/behave/surfaceTwoFuelModels.h
    src/behave/westernAspen.h
    src/behave/windAdjustmentFactor.h
    src/behave/windSpeedUtility.h)

SOURCE_GROUP("Behave Core Source Files" FILES ${SOURCE})
SOURCE_GROUP("Behave Core Header Files" FILES ${HEADERS})

ADD_EXECUTABLE(behave 
    ${SOURCE} 
    src/behave/client.cpp 
    ${HEADERS}
    )

