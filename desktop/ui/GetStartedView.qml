import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Rx.Widgets

Item {
    id: root

    property bool listenEditExtended: false

    Image {
        id: logoImage

        anchors.bottom: parent.verticalCenter
        anchors.bottomMargin: 64
        anchors.horizontalCenter: parent.horizontalCenter
        source: "qrc:/resources/assets/logo.svg"
        sourceSize: Qt.size(160, 160)
    }

    Label {
        id: logoTitle

        anchors.top: logoImage.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: "WebSocket Reflector X"
        font.pixelSize: 18
        font.bold: true
    }

    Row {
        id: listenEdit
        width: addressEdit.width
        clip: true
        spacing: 8

        anchors.top: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        height: root.listenEditExtended ? 40 : 0

        Behavior on height {
            NumberAnimation {
                duration: Style.midAnimationDuration
                easing.type: Easing.InOutExpo
            }
        }

        Button {
            id: refreshListenButton
            display: AbstractButton.IconOnly
            height: 40
            icon.source: "qrc:/resources/assets/arrow-counterclockwise.svg"
            icon.width: 20
            icon.height: 20
            borderWidth: 0
            hoverEnabled: true

            onClicked: {
                ui.refreshAvailableAddresses();
            }
            
            ToolTip {
                parent: refreshListenButton
                visible: parent.hovered

                text: qsTr("Refresh available in-bound addresses and ports")
            }
        }

        ComboBox {
            id: addressCombo

            model: ui.availableAddresses
            width: 360
        }

        TextBox {
            id: portEdit
            width: 104
            height: 40
            placeholder: qsTr("Port")
            inputText: "0"
            inputArea.validator: IntValidator { bottom:0; top: 65535 }

            ToolTip {
                parent: portEdit
                visible: portEdit.state === "Focus"

                text: qsTr("Use 0 to get random available port.")
            }
        }

    }

    Row {
        id: addressEdit

        anchors.top: listenEdit.bottom
        anchors.topMargin: 8
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 8

        Button {
            id: inboundButton
            display: AbstractButton.IconOnly
            height: 40
            icon.source: "qrc:/resources/assets/settings.svg"
            icon.width: 20
            icon.height: 20
            borderWidth: 0
            active: root.listenEditExtended
            onClicked: {
                root.listenEditExtended = !root.listenEditExtended;
            }
            hoverEnabled: true
            
            ToolTip {
                parent: inboundButton
                visible: parent.hovered

                text: qsTr("Configure In-bound Address")
            }
        }

        TextBox {
            width: 420
            height: 40
            placeholder: "[ws|wss]://..."
        }

        Button {
            display: AbstractButton.IconOnly
            height: 40
            icon.source: "qrc:/resources/assets/send.svg"
            icon.width: 20
            icon.height: 20
            borderWidth: 0
        }

    }

}
