cmake_minimum_required(VERSION 3.20)

set(SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}")
if(NOT DEFINED OUTPUT_DIR)
    set(OUTPUT_DIR "${SOURCE_DIR}/build")
endif()
get_filename_component(OUTPUT_DIR "${OUTPUT_DIR}" ABSOLUTE BASE_DIR "${SOURCE_DIR}")

find_program(PDFLATEX_EXECUTABLE NAMES pdflatex REQUIRED)
file(MAKE_DIRECTORY "${OUTPUT_DIR}")

# Run twice so page references and hyperlinks are up to date.
foreach(PASS RANGE 1 2)
    message(STATUS "Compiling main.tex (${PASS}/2)")
    execute_process(
        COMMAND "${PDFLATEX_EXECUTABLE}"
            -interaction=nonstopmode
            -halt-on-error
            -file-line-error
            "-output-directory=${OUTPUT_DIR}"
            main.tex
        WORKING_DIRECTORY "${SOURCE_DIR}"
        RESULT_VARIABLE LATEX_RESULT
        OUTPUT_VARIABLE LATEX_OUTPUT
        ERROR_VARIABLE LATEX_ERROR
    )
    if(NOT LATEX_RESULT STREQUAL "0")
        message(FATAL_ERROR
            "LaTeX failed (${LATEX_RESULT}).\n${LATEX_OUTPUT}\n${LATEX_ERROR}\n"
            "See ${OUTPUT_DIR}/main.log if available."
        )
    endif()
endforeach()

set(PUBLISHED_PDF "${SOURCE_DIR}/CV_Vo-Quang-Thang.pdf")
configure_file("${OUTPUT_DIR}/main.pdf" "${PUBLISHED_PDF}" COPYONLY)
message(STATUS "PDF: ${PUBLISHED_PDF}")
