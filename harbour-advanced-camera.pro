TEMPLATE = subdirs
SUBDIRS = src/piggzovision/piggzovision.pro src/src.pro
CONFIG += ordered

DISTFILES += rpm/harbour-advanced-camera.changes.in \
    rpm/harbour-advanced-camera.changes.run.in \
    rpm/harbour-advanced-camera.spec \
    rpm/harbour-advanced-camera.yaml \
    translations/*.ts \
    harbour-advanced-camera.desktop \
    qml/harbour-advanced-camera.qml \
    qml/components/DockedListView.qml \
    qml/components/RoundButton.qml \
    qml/cover/CoverPage.qml \
    qml/pages/CameraUI.qml \
    qml/pages/GalleryUI.qml \
    qml/pages/Settings.qml \
    qml/pages/SettingsOverlay.qml

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/harbour-advanced-camera-de.ts \
                translations/harbour-advanced-camera-es.ts \
                translations/harbour-advanced-camera-fi.ts \
                translations/harbour-advanced-camera-fr.ts \
                translations/harbour-advanced-camera-sv.ts

