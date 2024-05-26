import QtQuick 2.15

Item {
    width: parent.height * 0.8
    height: parent.height * 0.8

    Rectangle {
        anchors.fill: parent
        radius: width / 2  // Делаем прямоугольник круглым

        color: "white"

        Rectangle {
            width: parent.width * 0.75
            height: 2
            color: "black"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        Rectangle {
            width: 2
            height: parent.height * 0.75
            color: "black"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
