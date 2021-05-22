# Behave
A not-too-old implementation of the extended Rothermel model

# Requirements
* cmake
* Boost
* gcovr (optional for measuring test coverage)

# Building
Building out-of-source is **highly** recommended.
>        mkdir build
>        cd build
>        cmake <path_to_source>

# Testing
>        ctest

# Measuring Test Coverage
Because compiler optimizations are turned off in coverage builds, it's recommended that you build this separately from production builds.

>        mkdir coverage_build
>        cd coverage_build
>        cmake -DCOVERAGE=ON <path_to_source>
>        make 
>        make coverage
