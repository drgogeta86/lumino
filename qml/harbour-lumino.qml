import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow {
    id: mainWindow
    cover: Qt.resolvedUrl("Cover.qml")
    initialPage: Qt.resolvedUrl("pages/MainPage.qml")
}
