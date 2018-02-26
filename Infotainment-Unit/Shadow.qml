import QtQuick 2.0

Item {
    width: 800
    height: 100

    Image {
        id: image
        x: 0
        y: 0
        width: 800
        height: 100
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 50
        sourceSize.width: 800
        source: "ui-assets/main/upper-shadow.svg"
    }

}
