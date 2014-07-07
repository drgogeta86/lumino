# Lumino.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = harbour-lumino

CONFIG += sailfishapp

QT += dbus

#LIBS += -lconnman-qt5
#PKGCONFIG += connman-qt5

SOURCES += \
    src/harbour-lumino.cpp \
    src/lumino.cpp

OTHER_FILES += \
    qml/cover/CoverPage.qml \
    src/tethering.js \
    qml/pages/MainPage.qml \
    qml/pages/Cover.qml \
    qml/harbour-lumino.qml \
    harbour-lumino.desktop \
    rpm/harbour-lumino.yaml

HEADERS += \
    src/flashlight.h


