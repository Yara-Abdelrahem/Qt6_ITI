import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("PC Status")

    property url led_url: "qrc:/images/led_off.png"
    property bool isCaps: capslock.capsStatus()

    Column {
        spacing: 20
        anchors.centerIn: parent

        Image {
            id: led_img
            source: isCaps ? "qrc:/images/led_on.png" : "qrc:/images/led_off.png"
            width: 100
            height: 80
        }

        Button {
            text: "Toggle LED"
            onClicked: {
                capslock.toggleCapsLock()
                isCaps = capslock.capsStatus()
                console.log(isCaps.toString())
            }
        }

        Text {
            id: tempText
            text: "CPU Temperature: " + sysMonitor.getCpuTemperature() + "°C"
            font.pixelSize: 20
        }
        Timer {
            interval: 1000  // Update every 1 second (1000 ms)
            running: true
            repeat: true
            onTriggered: tempText.text = "CPU Temperature: " + sysMonitor.getCpuTemperature() + "°C"
        }

        Button {
            text: "Refresh Temperature"
            onClicked: tempText.text = "CPU Temperature: " + sysMonitor.getCpuTemperature() + "°C"
        }
    }

}
