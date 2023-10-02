cmake_minimum_required(VERSION 3.15)

project(RootGameProject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)

include(FetchContent)

FetchContent_Declare(SFML
        GIT_REPOSITORY https://github.com/SFML/SFML.git
        GIT_TAG 2.6.x)
FetchContent_MakeAvailable(SFML)

FetchContent_Declare(JSONCpp
        GIT_REPOSITORY https://github.com/open-source-parsers/jsoncpp.git
        GIT_TAG 1.9.5)
FetchContent_MakeAvailable(JSONCpp)

add_executable(RootGameProject src/main.cpp)
target_link_libraries(RootGameProject sfml-graphics sfml-audio sfml-window sfml-system jsoncpp_lib)
target_compile_features(RootGameProject PUBLIC cxx_std_17)

if(WIN32)
    add_custom_command(
            TARGET RootGameProject
            COMMENT "Copy OpenAL DLL"
            PRE_BUILD COMMAND ${CMAKE_COMMAND} -E copy ${SFML_SOURCE_DIR}/extlibs/bin/$<IF:$<EQUAL:${CMAKE_SIZEOF_VOID_P},8>,x64,x86>/openal32.dll $<TARGET_FILE_DIR:RootGameProject>
            VERBATIM)
endif()

if(WIN32)
    add_custom_command(
            TARGET RootGameProject
            COMMENT "Copy SFML DLLs"
            PRE_BUILD COMMAND ${CMAKE_COMMAND} -E copy_directory ${SFML_SOURCE_DIR}/extlibs/bin/$<IF:$<EQUAL:${CMAKE_SIZEOF_VOID_P},8>,x64,x86> $<TARGET_FILE_DIR:RootGameProject>
            VERBATIM)
endif()

install(TARGETS RootGameProject)
