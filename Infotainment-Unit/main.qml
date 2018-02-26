import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtLocation 5.6
import QtPositioning 5.6

Window {
    id: window
    visible: true
    width: 800
    height: 1280
    color: "#000000"
    property alias quickControlBar: quickControlBar
    title: qsTr("Hello World")

//    Image {
//        id: image
//        x: 0
//        y: 0
//        width: 800
//        height: 1280
//        sourceSize.height: 1280
//        sourceSize.width: 800
//        fillMode: Image.PreserveAspectCrop
//        source: "maps-google-vertical.png"
//    }
    Plugin {
            id: osmPlugin
            name: "osm"
            PluginParameter {name: "osm.mapping.highdpi_tiles"; value: true}
        }

        Map {
            anchors.fill: parent
            gesture.enabled: true
            plugin: osmPlugin
            center: QtPositioning.coordinate(40.706715, -73.8135) // New York
            zoomLevel: 10
        }


    Shadow {
        id: shadow
        x: 0
        y: 0
    }

    StatusBar {
        id: statusBar
        x: 0
        y: 10
    }

    QuickControlBar {
        id: quickControlBar
        x: 0
        y: 1200
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

    }



    //    Button{
    //        anchors.centerIn: parent
    //        text: "Push Me"
    //    }
}
