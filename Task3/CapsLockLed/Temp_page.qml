import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    Column {
        spacing: 20
        anchors.centerIn: parent
        Text {
            id: tempText
            text: "CPU Temperature: " + sysMonitor.getCpuTemperature() + "°C"
            font.pixelSize: 20
            color: "white"
        }

        Timer {
            interval: 1000
            running: true
            repeat: true
            onTriggered: tempText.text = "CPU Temperature: " + sysMonitor.getCpuTemperature() + "°C"
        }

        Button {
            text: "Refresh Temperature"
            onClicked: tempText.text = "CPU Temperature: " + sysMonitor.getCpuTemperature() + "°C"
        }
        Button {
            text: qsTr("Back Home")
            onClicked: {
                stackView1.pop();
            }
        }
    }
}
