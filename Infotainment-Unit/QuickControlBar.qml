import QtQuick 2.0

Item {
    width: 800
    height: 140

    FontLoader { id: antennaFontLight; source: "qrc:/fonts/antenna/Antenna-Light.otf" }

    Image {
        id: background
        x: 0
        y: 0
        width: 800
        height: 140
        sourceSize.width: 800
        sourceSize.height: 80
        fillMode: Image.Stretch
        source: "ui-assets/main/quickcontrolsbackground.svg"

        Text {
            id: driverTemp
            color: "#f2f2f2"
            text: qsTr("65°")
            anchors.horizontalCenterOffset: -125
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenterOffset: 10
            anchors.verticalCenter: parent.verticalCenter
            font.family: antennaFontLight.name
            font.pixelSize: 40
        }

        Text {
            id: passTemp
            color: "#f2f2f2"
            text: qsTr("65°")
            anchors.horizontalCenterOffset: 125
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenterOffset: 10
            anchors.verticalCenter: parent.verticalCenter
            font.family: antennaFontLight.name
            font.pixelSize: 40
        }

        ClimateFanStatus {
            anchors.verticalCenterOffset: 10
            arcBegin: 0
            arcEnd: 135
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
