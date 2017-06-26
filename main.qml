import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import "abc.js" as ssi
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        id: rect
        width: 50
        height: 50
        color: "blue"
        Text {
            id: txt
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                txt.text = "Vi Van Thuc"
            }
        }

    }

    Loader{
        id: rectTest1
        anchors.left: rect.right
        source: "test.qml"
    }
    Loader{
        x: 200
        y: 200
        source: "qml/test1.qml"
    }

    Button{
        x: 100
        y: 0
        id: btn1
        text: "Change Text"
        onClicked: {
            ssi.func1()
        }
    }
    Text {
        x: 200
        y: 100
        id: txt1
        text: qsTr("Lau ngay khong gap")
    }
}
