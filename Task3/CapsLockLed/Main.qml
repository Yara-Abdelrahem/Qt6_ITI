import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("PC Status")

    Image {
        source: "qrc:/images/background12.jpg"  // Replace with your image path
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

    StackView {
        id: stackView1
        anchors.fill: parent
        initialItem: mainPage
    }

    Item {
        id: mainPage
        Column {
            spacing: 20
            anchors.centerIn: parent
            Button {
                text: qsTr("LED Page")
                onClicked: {
                    stackView1.push("Led_page.qml");
                }
            }
            Button {
                text: qsTr("Temperature Page")
                onClicked: {
                    stackView1.push("Temp_page.qml");
                }
            }
        }
    }
}
