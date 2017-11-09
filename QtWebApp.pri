CONFIG += QtWebAppSources

QtWebAppSources {
    HEADERS += \
        $$PWD/QtWebApp/logging/dualfilelogger.h \
        $$PWD/QtWebApp/logging/filelogger.h \
        $$PWD/QtWebApp/logging/logger.h \
        $$PWD/QtWebApp/logging/logmessage.h \
        $$PWD/QtWebApp/httpserver/httpconnectionhandler.h \
        $$PWD/QtWebApp/httpserver/httpconnectionhandlerpool.h \
        $$PWD/QtWebApp/httpserver/httpcookie.h \
        $$PWD/QtWebApp/httpserver/httplistener.h \
        $$PWD/QtWebApp/httpserver/httprequest.h \
        $$PWD/QtWebApp/httpserver/httprequesthandler.h \
        $$PWD/QtWebApp/httpserver/httpresponse.h \
        $$PWD/QtWebApp/httpserver/httpserverconfig.h \
        $$PWD/QtWebApp/httpserver/httpsession.h \
        $$PWD/QtWebApp/httpserver/httpsessionstore.h \
        $$PWD/QtWebApp/httpserver/staticfilecontroller.h \
        $$PWD/QtWebApp/templateengine/templatecache.h \
        $$PWD/QtWebApp/templateengine/templateengineconfig.h \
        $$PWD/QtWebApp/templateengine/template.h \
        $$PWD/QtWebApp/templateengine/templateloader.h \
        $$PWD/QtWebApp/qtwebappglobal.h \

    SOURCES += \
        $$PWD/QtWebApp/logging/dualfilelogger.cpp \
        $$PWD/QtWebApp/logging/filelogger.cpp \
        $$PWD/QtWebApp/logging/logger.cpp \
        $$PWD/QtWebApp/logging/logmessage.cpp \
        $$PWD/QtWebApp/httpserver/httpconnectionhandler.cpp \
        $$PWD/QtWebApp/httpserver/httpconnectionhandlerpool.cpp \
        $$PWD/QtWebApp/httpserver/httpcookie.cpp \
        $$PWD/QtWebApp/httpserver/httplistener.cpp \
        $$PWD/QtWebApp/httpserver/httprequest.cpp \
        $$PWD/QtWebApp/httpserver/httpresponse.cpp \
        $$PWD/QtWebApp/httpserver/httpserverconfig.cpp \
        $$PWD/QtWebApp/httpserver/httpsession.cpp \
        $$PWD/QtWebApp/httpserver/httpsessionstore.cpp \
        $$PWD/QtWebApp/httpserver/staticfilecontroller.cpp \
        $$PWD/QtWebApp/templateengine/templatecache.cpp \
        $$PWD/QtWebApp/templateengine/template.cpp \
        $$PWD/QtWebApp/templateengine/templateengineconfig.cpp \
        $$PWD/QtWebApp/templateengine/templateloader.cpp \
        $$PWD/QtWebApp/qtwebappglobal.cpp \

    INCLUDEPATH += \
        $$PWD/QtWebApp/logging/ \
        $$PWD/QtWebApp/httpserver/ \
        $$PWD/QtWebApp/templateengine/ \
        $$PWD/QtWebApp/ \

}
