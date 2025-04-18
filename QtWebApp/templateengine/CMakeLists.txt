set(templateengine_HEADERS
		template.h
		templatecache.h
		templateengineconfig.h
		templateloader.h
	)
set(templateengine_SOURCES
		template.cpp
		templatecache.cpp
		templateengineconfig.cpp
		templateloader.cpp
	)

add_library(QtWebAppTemplateEngine SHARED ${templateengine_HEADERS} ${templateengine_SOURCES})
target_include_directories(QtWebAppTemplateEngine PUBLIC
	$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
	$<INSTALL_INTERFACE:include/qtwebapp/templateengine>
)
target_link_libraries(QtWebAppTemplateEngine QtWebAppGlobal Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Network)
if (Qt6_FOUND)
    find_package(Qt6 COMPONENTS Core5Compat REQUIRED)
    target_link_libraries(QtWebAppTemplateEngine Qt6::Core5Compat)
endif()
set_target_properties(QtWebAppTemplateEngine PROPERTIES
		VERSION ${qtwebapp_VERSION}
		SOVERSION ${qtwebapp_MAJOR}
	)

target_compile_definitions(QtWebAppTemplateEngine PRIVATE CMAKE_QTWEBAPP_SO)

install(TARGETS QtWebAppTemplateEngine
        EXPORT QtWebAppTargets
		LIBRARY DESTINATION lib
		RUNTIME DESTINATION bin
		ARCHIVE DESTINATION lib)
install(FILES ${templateengine_HEADERS}
        DESTINATION include/qtwebapp/templateengine)
