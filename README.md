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

You should see output ending with something like:
>        Running tests...
>        Test project /home/olivas/behave/coverage_build
>            Start 1: behave_test
>        1/1 Test #1: behave_test ......................   Passed    0.02 sec
>        
>        100% tests passed, 0 tests failed out of 1
>        
>        Total Test time (real) =   0.02 sec
>        ------------------------------------------------------------------------------
>                                   GCC Code Coverage Report
>        Directory: ../
>        ------------------------------------------------------------------------------
>        File                                       Lines    Exec  Cover   Missing
>        ------------------------------------------------------------------------------
>        ...
>        ------------------------------------------------------------------------------
>        TOTAL                                       6087    4160    68%
>        ------------------------------------------------------------------------------
