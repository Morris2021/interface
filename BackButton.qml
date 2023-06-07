import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Button{
    id: navButton
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    anchors.margins: 10
    height: 50
    width: 100
    background: Rectangle{
        border.color: "#de0052"
        color: "#FFB573"
        radius: 5
    }
    contentItem: Text{
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: "Back"
        color: "#de0052"
    }
}

