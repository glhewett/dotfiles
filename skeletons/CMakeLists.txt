project(main)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

option(BUILD_TESTS "build tests" OFF)

file(GLOB SOURCES CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)
file(GLOB HEADERS CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/src/*.hpp)
add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})

if(BUILD_TESTS)
    FetchContent_Declare(doctest GIT_REPOSITORY https://github.com/onqtam/doctest.git)
    FetchContent_MakeAvailable(doctest)

    #find_package(doctest REQUIRED)
    #include(doctest)

    set(TEST_PROJECT_NAME "test_${PROJECT_NAME}")

    file(GLOB TEST_SOURCES CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/tests/*.cpp)
    file(GLOB TEST_HEADERS CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/tests/*.hpp)

    add_executable(${TEST_PROJECT_NAME} ${TEST_SOURCES} ${TEST_HEADERS})
    target_link_libraries(${TEST_PROJECT_NAME} ${PROJECT_NAME} doctest::doctest)

    enable_testing()
    doctest_discover_tests(${TEST_PROJECT_NAME})

endif(BUILD_TESTS)

# vim:set tw=0:
