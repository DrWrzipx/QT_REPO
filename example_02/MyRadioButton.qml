import QtQuick 2.0

Rectangle {
    id: sideButton
    property string text: 'Button'
    property MyRadioGroup radioGroup

    color:  radioGroup.selected === sideButton ? "cornsilk" :
            (sideButtonMouseArea.containsMouse ? "darksalmon" : "darkblue")
    MouseArea {
        id: sideButtonMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: sideButton.radioGroup.selected = sideButton
    }

    Text {
        id: sideButtonLabel
        text: sideButton.text
        font.pixelSize: 20
        font.family: 'Tahoma'
        anchors.centerIn: sideButton
        color: radioGroup.selected === sideButton ? "azure" : "aliceblue"
    }
}
