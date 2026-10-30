cmake_minimum_required(VERSION 3.20)
project(MyCV LANGUAGES NONE)

add_custom_target(pdf ALL
    COMMAND "${CMAKE_COMMAND}"
        "-DOUTPUT_DIR=${CMAKE_CURRENT_BINARY_DIR}"
        -P "${CMAKE_CURRENT_SOURCE_DIR}/build.cmake"
    BYPRODUCTS
        "${CMAKE_CURRENT_BINARY_DIR}/main.pdf"
        "${CMAKE_CURRENT_SOURCE_DIR}/CV_Vo-Quang-Thang.pdf"
    COMMENT "Building CV PDF"
    VERBATIM
)
