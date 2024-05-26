import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

import Common 1.0 as Common
import Components 1.0 as Components

Window {
    width: 640
    height: 480
    visible: true

    Rectangle {
        color: Common.Colors.headers

        height: parent.height * 0.075

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        RowLayout {
            anchors.fill: parent
            leftMargin: width * 0.1
            Components.ButtonPlus {
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

    title: qsTr("log parser")
}

