import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.lumino 1.0


ApplicationWindow
{
    id: app
    property bool torch_enabled : false
    property bool enable_timer : false
    property bool disable_timer : false


    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            id: pullDownMenu
            MenuItem {
                id: aboutMenuAction
                text: "About"
                onClicked: {
                    console.log("aboutMenuAction clicked")
                }
            }
        }





    FlashLight {

         id: flashlight
    }

    Component.onCompleted: {
        console.log("ciao pirla")
    }

    Timer {
        id: timer1
        running: app.enable_timer
        repeat: true

        onTriggered: {
            app.enable_timer = false


            flashlight.enable_flashlight();
            console.log('enabled torch')
        }
    }
    Timer {
        id: timer2
        running: app.disable_timer
        repeat: true

        onTriggered: {
            app.disable_timer = false

            flashlight.disable_flashlight()

            console.log('disabled torch')
        }
    }
     Column {
            id: column

            spacing: Theme.paddingLarge
            PageHeader {
                title: "FlashLight"
            }
            Label {
                x: Theme.paddingLarge
                text: "Enabled: " + app.torch_enabled
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }



            Button {
                id: button_enable
                text: "Enable FlashLight"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: {
                    // trigger timers to actually do the job
                    app.enable_timer = !app.torch_enabled // enable if it was'nt on
                    app.disable_timer = app.torch_enabled // disable if it was on
                    app.torch_enabled = !app.torch_enabled

                    // change status display
                    button_enable.text = (app.torch_enabled ? "Disable" : "Enable") + "FlashLight"
                }

            }
     }
}
}
