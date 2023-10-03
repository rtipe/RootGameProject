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

add_executable(RootGameProject 
        src/main.cpp
        scripts/ForwardParallax.cpp
        scripts/VasselMovement.cpp
)

# Inclure tous les fichiers .hpp dans GameEngine/src
include_directories(
        ${CMAKE_SOURCE_DIR}/GameEngine/src
        ${CMAKE_SOURCE_DIR}/GameEngine/src/AssetManager
        ${CMAKE_SOURCE_DIR}/GameEngine/src/Displayer
        ${CMAKE_SOURCE_DIR}/GameEngine/src/Event
        ${CMAKE_SOURCE_DIR}/GameEngine/src/Object
        ${CMAKE_SOURCE_DIR}/GameEngine/src/Object/EmptyObject
        ${CMAKE_SOURCE_DIR}/GameEngine/src/Object/SpriteObject
        ${CMAKE_SOURCE_DIR}/GameEngine/src/Object/TextObject
        ${CMAKE_SOURCE_DIR}/GameEngine/src/Object/Transform
        ${CMAKE_SOURCE_DIR}/GameEngine/src/Scene
        ${CMAKE_SOURCE_DIR}/GameEngine/src/Script
        ${CMAKE_SOURCE_DIR}/scripts
)
target_sources(RootGameProject PRIVATE ${HEADER_FILES})

target_link_libraries(RootGameProject
        sfml-graphics sfml-audio sfml-window sfml-system jsoncpp_lib)

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

if(UNIX)
    target_link_libraries(RootGameProject ${CMAKE_SOURCE_DIR}/libUnitiGameEngine.a)
endif()

if(WIN32)
    target_link_libraries(RootGameProject ${CMAKE_SOURCE_DIR}/UnitiGameEngine.lib)
endif()

install(TARGETS RootGameProject)
