import Quickshell
import QtQuick

ShellRoot {
  // Top bar
  PanelWindow {
    anchors {
      top: true
      left: true
      right: true
    }
    implicitHeight: 32
    color: "#282828"  // Gruvbox dark background

    // Time display
    Text {
      anchors.centerIn: parent
      text: Qt.formatDateTime(new Date(), "hh:mm")
      font.pixelSize: 14
      color: "#ebdbb2"  // Gruvbox light foreground
      
      Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: parent.text = Qt.formatDateTime(new Date(), "hh:mm")
      }
    }
  }
}
