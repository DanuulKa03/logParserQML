cmake_minimum_required(VERSION 3.14)

project(logParser VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core Quick)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Quick)

set(PROJECT_SOURCES
        main.cpp
        qml.qrc
)

if(${QT_VERSION_MAJOR} GREATER_EQUAL 6)
    qt_add_executable(${PROJECT_NAME}
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES}
    )
else()
    add_executable(${PROJECT_NAME}
       ${PROJECT_SOURCES}
    )
endif()

list(APPEND QML_DIRS "${CMAKE_SOURCE_DIR}/qml")
list(REMOVE_DUPLICATES QML_DIRS)
set(QML_IMPORT_PATH "${QML_DIRS}" CACHE STRING "QML import paths")

target_compile_definitions(${PROJECT_NAME} PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)

target_link_libraries(logParser PRIVATE
    Qt${QT_VERSION_MAJOR}::Core
    Qt${QT_VERSION_MAJOR}::Quick
)

set_target_properties(logParser PROPERTIES
    ${BUNDLE_ID_OPTION}
    WIN32_EXECUTABLE TRUE
)

include(GNUInstallDirs)
install(TARGETS logParser
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)
