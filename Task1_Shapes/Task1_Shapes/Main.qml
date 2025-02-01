import QtQuick

Window {
    width: 1000
    height: 480
    visible: true
    title: qsTr("Task 1 Shapes")
    Rectangle{
        id:rect1
        width:150
        height:150
        color:"blue"
        radius: 20
        x: parent.width * 0.05
        y: parent.height * 0.2
        Rectangle{
            id:rect11
            width:125
            height:125
            //radius: 2
            color: "red"
            anchors.centerIn: parent
        Text {
            id: txt1
            text: qsTr("Hello")
            anchors.centerIn: parent
            font.family: "Helvetica"
            font.pointSize: 15
            }
        }
    }
    Rectangle{
        id:rect2
        width:150
        height: 150
        radius: 20
        color: "gray"
        x: parent.width * 0.25
        y: parent.height * 0.2
        Rectangle{
            id:rect21
            width: 125
            height:125
            color: "green"
            anchors.centerIn: parent
            Text {
                id: txt2
                text: qsTr("world")
                anchors.centerIn: parent
                font.family: "Helvetica"
                font.pointSize: 15
            }
        }
    }
    Rectangle{
        id:rect3
        width:150
        height: 150
        color:"yellow"
        radius: 20
        x: parent.width * 0.45
        y: parent.height * 0.2
        Rectangle{
            id:rect31
            width: 125
            height:125
            //radius: 2
            color: "blue"
            anchors.centerIn: parent
            Text {
                id: txt3
                text: qsTr("!")
                anchors.centerIn: parent
                font.family: "Helvetica"
                font.pointSize: 15
            }
        }
    }
    Rectangle{
        id:rect4
        width:150
        height: 150
        color:"gray"
        radius: 20
        x: parent.width * 0.65
        y: parent.height * 0.2
        Rectangle{
            id:rect41
            width:125
            height: 125
            color:"purple"
            anchors.centerIn: parent
            radius:5
            Text {
                id: txt4
                text: qsTr("Anas")
                anchors.centerIn: parent
                font.family: "Helvetica"
                font.pointSize: 15
            }

        }
    }
    Rectangle {
        id: circle
        width: 150
        height: 150
        color: "pink"
        radius: width / 2
        border.color: "black"
        border.width: 13
        x: parent.width * 0.85
        y: parent.height * 0.2
        Text {
            id: txt5
            text: qsTr("Khamees")
            anchors.centerIn: parent
            font.family: "Helvetica"
            font.pointSize: 15
        }
    }
}
