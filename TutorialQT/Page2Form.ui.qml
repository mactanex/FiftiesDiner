import QtQuick 2.4

Item {
    width: 400
    height: 400


    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 77

        anchors.top: parent.top
        id: rectangle
        x: 0
        y: 77
        width: 400
        height: 640
        color: "black"

        Component {
            id: MenuItemDelegate
            Rectangle {

            }
        }

        ListView {
            id: listView
            x: 8
            y: 80
            width: 400
            height: 400
            highlightFollowsCurrentItem: true
            contentHeight: 800
            snapMode: ListView.NoSnap

            delegate: Item {
                x: 5
                width: 400
                height: 80

                Row {
                    id: row1
                    spacing: 10
                    Image {
                        id: image
                        x: 40
                        y: 0
                        width: 80
                        height: 80
                        source: "tilbud.png"
                    }

                    Text {
                        text: name + "\n" + desc
                        anchors.verticalCenter: parent.verticalCenter
                        font.bold: true
                    }
                }
            }



            model: ListModel {
                ListElement {
                    name: "Tilbud 1"
                    desc: "det er bare billigt"
                    category: "Popular"
                }

                ListElement {
                    name: "Tilbud 2"
                    desc: "måske lidt dyr"
                    category: "Popular"
                }

                ListElement {
                    name: "Tilbud 3"
                    desc: "ret dyr"
                    category: "Popular"
                }

                ListElement {
                    name: "Tilbud 4"
                    desc: "hvorfor"
                    category: "Popular"
                }
                ListElement {
                    name: "Tilbud 5"
                    desc: "hvorfor ikke"
                    category: "Popular"
                }
                ListElement {
                    name: "Tilbud 6"
                    desc: "det er bare billigt"
                    category: "Popular"
                }

                ListElement {
                    name: "Tilbud 7"
                    desc: "måske lidt dyr"
                    category: "Popular"
                }

                ListElement {
                    name: "Tilbud 8"
                    desc: "ret dyr"
                    category: "Popular"
                }

                ListElement {
                    name: "Tilbud 9"
                    desc: "hvorfor"
                    category: "Popular"
                }
                ListElement {
                    name: "Tilbud 10"
                    desc: "hvorfor ikke"
                    category: "Popular"
                }
            }
        }
    }
}
