import QtQuick 2.4

Item {
    id: item1
    width: 400
    height: 400



    PathView {
        id: pathView
        x: 75
        y: 135
        width: 250
        height: 130
        scale: 2
        delegate: Column {
            spacing: 5
            Rectangle {
                width: 40
                height: 40
                color: "lightsteelblue"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                x: 5
                text: name
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
            }
        }
        path: Path {
            startX: 120
            PathQuad {
                x: 120
                y: 25
                controlX: 260
                controlY: 75
            }

            PathQuad {
                x: 120
                y: 100
                controlX: -20
                controlY: 75
            }
            startY: 100
        }
        model: ListModel {
            ListElement {
                name: "Mest Populære Retter"

            }

            ListElement {
                name: "Drikkevarer"

            }

            ListElement {
                name: "Burger Deal"

            }

            ListElement {
                name: "Burgere"

            }
            ListElement {
                name: "Forretter"

            }
            ListElement {
                name: "Hovedretter"

            }
            ListElement {
                name: "Deset"

            }
        }
    }
}
