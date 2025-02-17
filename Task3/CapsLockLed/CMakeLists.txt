cmake_minimum_required(VERSION 3.16)

set(CMAKE_AUTORCC ON)

project(CapsLockLed VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)
find_package(X11 REQUIRED)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appCapsLockLed
    main.cpp
    capslock.h
    capslock.cpp
)

qt_add_qml_module(appCapsLockLed
    URI CapsLockLed
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES src.qrc
        SOURCES
        SOURCES
        SOURCES capslock.h capslock.cpp
        SOURCES systemmonitor.h systemmonitor.cpp
        QML_FILES Led_page.qml
        QML_FILES Temp_page.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appCapsLockLed PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appCapsLockLed
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appCapsLockLed
    PRIVATE Qt6::Quick X11 Xtst)


include(GNUInstallDirs)
install(TARGETS appCapsLockLed
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
