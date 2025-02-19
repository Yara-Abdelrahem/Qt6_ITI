import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    property url led_url: "qrc:/images/led_off.png"
    property bool isCaps: capslock.capsStatus()

    Column {
        spacing: 20
        anchors.centerIn: parent

        Image {
            id: led_img
            source: isCaps ? "qrc:/images/led_on.png" : "qrc:/images/led_off.png"
            width: 80
            height: 70
        }

        Button {
            text: "Toggle LED"
            onClicked: {
                capslock.toggleCapsLock()
                isCaps = capslock.capsStatus()
                console.log("led : ",isCaps.toString())
            }
        }

        Button {
            text: qsTr("Back Home")
            onClicked: {
                stackView1.pop();
            }
        }
    }
}
