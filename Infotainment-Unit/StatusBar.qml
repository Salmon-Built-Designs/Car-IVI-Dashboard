import QtQuick 2.0

Item {
    id: statusBar
    width: 800
    height: 45

    FontLoader { id: antennaFontRegular; source: "qrc:/fonts/antenna/Antenna-Regular.otf" }

    Text {
        id: timeText
        x: 7
        y: 3
        color: "#f2f2f2"
        text: {
            updatesEnabled: timeText.time
            Qt.formatTime(new Date(), "h:mm AP")
        }
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 15
        font.family: antennaFontRegular.name
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 23
    }

    Timer {
        id: timeTimer
        interval: 60
        repeat: true
        running: true

        onTriggered:
        {
            timeText.text =  Qt.formatTime(new Date(),"h:mm AP")
        }
    }

    Image {
        id: fordLogo
        x: 373
        y: 0
        width: 138
        height: 45
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 27
        source: "ui-assets/main/white-ford-logo.svg"
    }
}
