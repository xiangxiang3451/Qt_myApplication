import QtQuick 2.0
import QtQuick.Controls 2.0

Item {

    Rectangle {
        id:rec1
        color: "lightblue"
        anchors.fill: parent

        Rectangle{//卡片
            id:wordCard
            visible: false
            color: "#ffffff"
            width: rec1.width*0.8
            height: rec1.height*0.7
            radius: 40
            anchors.horizontalCenter: rec1.horizontalCenter
            anchors.bottom: rec1.bottom
            anchors.bottomMargin: 80
            z:2

            Row{
                spacing: 40
                anchors.horizontalCenter: wordCard.horizontalCenter
                anchors.bottom: wordCard.bottom
                anchors.bottomMargin: 20

                Button{
                    width: 50
                    height: 20
                    text: "添加"

                }
                Button{
                    width: 50
                    height: 20
                    text:"返回"
                    onClicked:{
                        wordCard.visible=false
                    }
                }
            }
        }


        Rectangle{
            width: 100
            height:50
            color: "#00A2E8"
            radius: 25
            anchors.horizontalCenter: rec1.horizontalCenter
            anchors.bottom:rec1.bottom
            anchors.bottomMargin: 80
            z:1

            Text {
                id: txt
                text: qsTr("+ 单词")
                anchors.centerIn: parent
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    wordCard.visible=true
                }}
        }
    }

}


