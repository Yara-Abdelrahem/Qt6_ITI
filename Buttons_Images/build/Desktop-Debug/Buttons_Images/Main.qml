import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property url imgURL: "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/e3158f127682869.6147249942ee4.jpg"

    property bool butt1_Nclick: true
    property bool butt2_Nclick: true
    property bool butt3_Nclick: true
    property bool butt4_Nclick: true

    property bool img1_click: false
    property bool img2_click: false
    property bool img3_click: false
    property bool img4_click: false

    Column{
        spacing: 20
        anchors.centerIn: parent

        //image from working directory
        Item{
            width: 320
            height: 200
            Image {
                id: image1Id
                source: "file:mountain-3.jpg"
                width: 300
                height: 150
                visible: img1_click
            }
            Text {
            id: img1TxtId
            text: qsTr("Loaded from working directory")
            anchors.top: image1Id.bottom
            }
            Button{
                id:butt1
                visible: butt1_Nclick
                text:qsTr("show image")
                anchors.top: img4TxtId.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                butt1_Nclick = false
                img1_click=true
                }
            }
        }


        //Load image from full path
        Item{
        width: 320
        height: 200
            Image {
                id: image2Id
                source: "file:/home/yara/Downloads/Landscape-Color.jpg"
                width: 300
                height: 150
                visible: img2_click
            }
            Text {
            id: img2TxtId
            text: qsTr("Loaded from full path")
            anchors.top: image2Id.bottom                }
            Button{
                id:butt2
                visible: butt2_Nclick
                text:qsTr("show image")
                anchors.top: img4TxtId.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                butt2_Nclick = false
                img2_click=true
                }
            }
        }

        /* Load image from embedded resources */
        Item{
        width: 320
        height: 200
            Image {
            id: image3Id
            source: "qrc:/images/perceptual-standard.jpg"
            width: 300
            height: 150
            visible: img3_click
            }
            Text {
            id: img3TxtId
            text: qsTr("Loaded from resources")
            anchors.top: image3Id.bottom            }
            Button{
                id:butt3
                visible: butt3_Nclick
                text:qsTr("show image")
                anchors.top: img4TxtId.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                butt3_Nclick = false
                img3_click=true
                }
            }

        }

        /* Load image from internet */
        Item{
        width: 320
        height: 200
            Image {
            id: image4Id
            source: imgURL
            width: 300
            height: 150
            visible: img4_click
            }
            Text {
            id: img4TxtId
            text: qsTr("Loaded from internet")
            anchors.top: image4Id.bottom
            }
            Button{
                id:butt4
                visible: butt4_Nclick
                text:qsTr("show image")
                anchors.top: img4TxtId.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                butt4_Nclick = false
                img4_click=true
                }
            }
        }

    }


}
