import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.0
import "text.js" as JS
Window {

    visible: true
    width: 360
    height: 640
    title: qsTr("reword")
    color: "#FFFFFF"

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("page1.qml")
    }

//    Rectangle{//开头的文本框
//        width: 360
//        height: 200
//        anchors.fill: parent
//        Text {
//            id: textArea
//            anchors.fill: parent
//            text: qsTr(" ")
//        }
//    }




    Rectangle { // 底部菜单背景
        id: bottomMenu
        color: "#e0e0e0"
        height: 50 // 调整高度以容纳图标和文字
        width: parent.width
        anchors.bottom: parent.bottom

        Row { // 按钮容器
            spacing: 45
            anchors.centerIn: parent

            // 自定义按钮1
            Rectangle {
                id:rec1
                width: 25; height: 25 // 包含图标和文字的区域大小
                color: "#e0e0e0"
                Column {
                    anchors.centerIn: parent
                    Image {
                        source: "qrc:/images/study.png" // 图标
                        width: 25; height: 25
                    }
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        stackView.replace(Qt.resolvedUrl("page1.qml"))
                    }
                }}

            // 自定义按钮2
            Rectangle {
                width: 25; height: 25 // 包含图标和文字的区域大小
                color: "#e0e0e0"
                Column {
                    anchors.centerIn: parent
                    Image {
                        source: "qrc:/images/book.png" // 图标
                        width: 25; height: 25
                    }
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: stackView.replace(Qt.resolvedUrl("page2.qml"))
                }
            }

            Rectangle {
                width: 25; height: 25 // 包含图标和文字的区域大小
                color: "#e0e0e0"
                Column {
                    anchors.centerIn: parent
                    Image {
                        source: "qrc:/images/setting.png" // 图标
                        width: 25; height: 25
                    }
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: stackView.replace(Qt.resolvedUrl("page3.qml"))
                }
            }
        }


    }
}
