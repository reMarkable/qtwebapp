set(qtwebapp_MAJOR 1)
set(qtwebapp_MINOR 8)
set(qtwebapp_PATCH 3)
set(qtwebapp_VERSION ${qtwebapp_MAJOR}.${qtwebapp_MINOR}.${qtwebapp_PATCH})

find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Network REQUIRED)

configure_file(qtwebappglobal.h.in qtwebappglobal.h @ONLY)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/qtwebappglobal.h
	    DESTINATION include/qtwebapp/)
include_directories(${CMAKE_CURRENT_BINARY_DIR})

add_library(QtWebAppGlobal SHARED qtwebappglobal.cpp)
target_include_directories(QtWebAppGlobal PUBLIC
	$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
	$<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}>
	$<INSTALL_INTERFACE:include/qtwebapp>
)
target_link_libraries(QtWebAppGlobal Qt${QT_VERSION_MAJOR}::Core)
set_target_properties(QtWebAppGlobal PROPERTIES
		VERSION ${qtwebapp_VERSION}
		SOVERSION ${qtwebapp_MAJOR}
	)
target_compile_definitions(QtWebAppGlobal PRIVATE CMAKE_QTWEBAPP_SO)

install(TARGETS QtWebAppGlobal
		EXPORT QtWebAppTargets
		LIBRARY DESTINATION lib
		RUNTIME DESTINATION bin
		ARCHIVE DESTINATION lib)

add_subdirectory(logging)
add_subdirectory(httpserver)

option(WITH_TEMPLATEENGINE "Template engine" OFF)
if (WITH_TEMPLATEENGINE)
  add_subdirectory(templateengine)
endif()

configure_file(cmake/QtWebAppConfig.cmake.in        QtWebAppConfig.cmake        @ONLY)
configure_file(cmake/QtWebAppConfigVersion.cmake.in QtWebAppConfigVersion.cmake @ONLY)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/QtWebAppConfig.cmake
	          ${CMAKE_CURRENT_BINARY_DIR}/QtWebAppConfigVersion.cmake
        DESTINATION lib/cmake/QtWebApp)


install(EXPORT QtWebAppTargets
		DESTINATION lib/cmake/QtWebApp)
