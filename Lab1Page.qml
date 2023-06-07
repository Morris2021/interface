import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Page {
    id: root

    signal writeUSBClicked();
    signal backButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "white"

        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            id: writeToUSBButton
            height: 70
            width: 200
            background: Rectangle{
                color: "#de0052"
                radius: 5
            }
            contentItem: Text{
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: "Get USB devices info"
                color: "white"
            }
            onClicked: root.writeUSBClicked()
        }

        Grid {
            id: colorPicker
            x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
            rows: 3; columns: 3; spacing: 3

            Cell { cellColor: "#7109AA"; onClicked: page.color = cellColor }
            Cell { cellColor: "#06799f"; onClicked: page.color = cellColor }
            Cell { cellColor: "#5de100"; onClicked: page.color = cellColor }
            Cell { cellColor: "red"; onClicked: page.color = cellColor }
            Cell { cellColor: "#D50065"; onClicked: page.color = cellColor }
            Cell { cellColor: "black"; onClicked: page.color = cellColor }
        }

        BackButton { onClicked: root.backButtonClicked() }
    }
}
