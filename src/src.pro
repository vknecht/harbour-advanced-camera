# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-advanced-camera

CONFIG += sailfishapp

QT += multimedia

DEPENDPATH += piggzovision
INCLUDEPATH += piggzovision
LIBS += -Lpiggzovision/ -lpiggzovision
QMAKE_LFLAGS += -Wl,-rpath,\\$${LITERAL_DOLLAR}$${LITERAL_DOLLAR}ORIGIN/../share/harbour-advanced-camera/lib\

SOURCES += harbour-advanced-camera.cpp \
    fsoperations.cpp

HEADERS += \
    fsoperations.h
