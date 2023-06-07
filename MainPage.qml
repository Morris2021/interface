import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Page {
    id: root

    signal lab1ButtonClicked();
    signal lab2ButtonClicked();
    signal lab3ButtonClicked();
    signal lab4ButtonClicked();
    signal lab5ButtonClicked();

    background: Rectangle {
        id: mainBackground
        color: "#FFAA73"
        Rectangle{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width-100
            height: parent.height-200
            color: "#FF8B40"
            radius: 10
            border.color: "#de0052"
            Column{

                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10
                Row{
                    spacing: 10
                    Button{
                        id: lab1Button
                        height: 50
                        width: 100
                        background: Rectangle{
                            color: "#de0052"
                            radius: 5
                        }
                        contentItem: Text{
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            text: "USB Devices"
                            color: "white"
                        }
                        onClicked:{
                            root.lab1ButtonClicked()
                        }
                    }

                    Button{
                        id: lab2Button
                        height: 50
                        width: 200
                        background: Rectangle{
                            color: "#de0052"
                            radius: 5
                        }
                        contentItem: Text{
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            text: "CPU | Memory | Devices"
                            color: "white"
                        }
                        onClicked:{
                            root.lab2ButtonClicked()
                        }
                    }

                    Button {
                        id: lab3Button
                        height: 50
                        width: 100
                        background: Rectangle{
                            color: "#de0052"
                            radius: 5
                        }
                        contentItem: Text{
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            text: "Keyboard"
                            color: "white"
                        }
                        onClicked:{
                            root.lab3ButtonClicked()
                        }
                    }
                }

                Row{
                    spacing: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    Button {
                        id: lab4Button
                        height: 50
                        width: 100
                        background: Rectangle{
                            color: "#de0052"
                            radius: 5
                        }
                        contentItem: Text{
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            text: "Projector"
                            color: "white"
                        }
                        onClicked:{
                            root.lab4ButtonClicked()
                        }
                    }

                    Button {
                        id: lab5Button
                        height: 50
                        width: 120
                        background: Rectangle{
                            color: "#de0052"
                            radius: 5
                        }
                        contentItem: Text{
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            text: "Microprocessor"
                            color: "white"
                        }
                        onClicked: {
                            root.lab5ButtonClicked()
                        }
                    }
                }
            }
        }
    }
}
