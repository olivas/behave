IF(RAWS_BATCH)
    ADD_EXECUTABLE(behave-raws-batch
        ${SOURCE}
        src/rawsBatch/behaveRawsBatch.cpp
        ${HEADERS})
ENDIF()

IF(COMPUTE_SPOT_PILE)
    ADD_EXECUTABLE(compute_spot_distance_pile
        ${SOURCE}
        src/spotDistancePile/computePileSpottingDistance.cpp
        ${HEADERS})
ENDIF()

IF(COMPUTE_SPOT_SURFACE)
    ADD_EXECUTABLE(compute_spot_distance_surface
        ${SOURCE}
        src/spotDistanceSurface/computeSurfaceSpottingDistance.cpp
        ${HEADERS})
ENDIF()

IF(COMPUTE_SPOT_TORCHING_TREES)
    ADD_EXECUTABLE(compute_spot_distance_trees
        ${SOURCE}
        src/spotDistanceTorchingTrees/computeTorchingTreesSpottingDistance.cpp
        ${HEADERS})
ENDIF()
