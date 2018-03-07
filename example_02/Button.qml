import QtQuick 2.10
import QtQuick.Window 2.10
import QtSensors 5.9
import QtQuick.Controls.Material 2.0
import QtGraphicalEffects 1.0
import Qt.labs.handlers 1.0
import QtQuick.Extras 1.4
import QtQuick.Controls 2.3

Rectangle { // size controlled by height
    id: root

// public
    property string text: 'text'
    signal clicked(); // onClicked: print('onClicked')

// private
    width: 250;  height: 50 // default size
    border.width: 0.05 * root.height
    radius:       0.5  * root.height
    opacity:      enabled? 1: 0.3 // disabled state

    Text {
        text: root.text
        font.pixelSize: 0.5 * root.height
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        onPressed:  parent.opacity = 0.5 // down state
        onReleased: parent.opacity = 1
        onCanceled: parent.opacity = 1
        onClicked:  root.clicked() // emit
    }
}
