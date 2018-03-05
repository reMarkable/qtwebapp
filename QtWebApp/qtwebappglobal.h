#pragma once

#include <sys/types.h>

#include <QtGlobal>
#include <QVariant>

#define QTWEBAPP_MAJOR 1
#define QTWEBAPP_MINOR 7
#define QTWEBAPP_PATCH 3
#define QTWEBAPP_VERSION ((1 << 16) | (7 << 8) | 3)
#define QTWEBAPP_VERSION_STR "1.7.3"

#define QTWEBAPP_EXPORT
#define QTWEBAPP_PRIVATE

namespace qtwebapp {

/// The version of QtWebApp.
QTWEBAPP_EXPORT const char* getQtWebAppLibVersion();

/// Parses the given number by respecting its suffix.
QTWEBAPP_EXPORT int parseNum(const QVariant &v, int base = 1e3);

}
