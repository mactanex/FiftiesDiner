import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
    property alias textField1: textField1
    property alias button1: button1
    property alias text1: text1
    property alias text2: text2
    Text {
        id: text1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 77
        anchors.top: parent.top
        font.pointSize: 22
        font.bold: true
        text: qsTr("Tilføj din kupon kode her \n og optjen til en gratis Milkshake!!")
        anchors.horizontalCenterOffset: 1
        BorderImage {
               anchors.fill: rectangle
               anchors { leftMargin: -6; topMargin: -6; rightMargin: -8; bottomMargin: -8 }
               border { left: 10; top: 10; right: 10; bottom: 10 }
               source: "shadow.png"
           }
    }
    Text {
        id: text2
        x: 66
        y: 233
        width: 508
        height: 112
        font.pointSize: 20
        text: rabat.m_text
    }

    RowLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 400
        anchors.top: parent.top

        TextField {
            id: textField1
            placeholderText: qsTr("KuponKode")
        }

        Button {
            id: button1
            text: qsTr("Tilføj")
        }
    }

    BusyIndicator {
        anchors.horizontalCenter: parent.horizontalCenter
        id: busyIndicator
        x: 290
        y: 334
    }
}
