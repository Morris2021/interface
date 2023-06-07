import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Page {
    id: root
    signal backButtonClicked();
    signal cpuButtonClicked();
    signal memoryButtonClicked();
    signal deviceButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "#FF8B40"

        Grid{
            id: infoButtons
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            rows: 1; columns: 3; spacing: 7
            Button{
                id: cpuButton
                height: 55
                width: 120
                background: Rectangle{
                    color: "#de0052"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "CPU info"
                    color: "white"
                }
                onClicked: root.cpuButtonClicked()

            }
            Button{
                id: memoryButton
                height: 55
                width: 120
                background: Rectangle{
                    color: "#de0052"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Memory info"
                    color: "white"
                }
                onClicked: root.memoryButtonClicked()
            }
            Button{
                id: deviceButton
                height: 55
                width: 120
                background: Rectangle{
                    color: "#de0052"
                    radius: 5
                }
                contentItem: Text{
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Devices info"
                    color: "white"
                }
                onClicked: root.deviceButtonClicked()
            }
        }



        BackButton { onClicked: root.backButtonClicked() }
    }
}
