import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: aboutpage

    Column {
        id: column
        width: aboutpage.width
        spacing: Theme.paddingLarge

        PageHeader {
            id: header
            title: "About SGAuth v0.1-2"
        }

        Text {
            text: "This is just a simple application that generates Google Authenticator TOTP passcodes. "+
                  "Hopefully I'm able to add QR-code scanning in the future but for the moment you have to enter the secret key manually."+
                  "\n\n"+
                  "Source code is available on GitHub:\n"+
                  "https://github.com/stozze/harbour-sgauth"+
                  "\n\n"+
                  "Feel free to report issues or contribute via GitHub."+
                  "\n\n"+
                  "Stozze <stozze@rambolo.net>\n"+
                  "http://www.rambolo.net"
            color: Theme.secondaryColor
            x: Theme.paddingLarge
            font.pixelSize: Theme.fontSizeSmall
            width: column.width - Theme.paddingLarge * 2
            wrapMode: Text.WordWrap
        }

        Text {
            text: "\n\nSGAuth-icon comes from VisualPharm\nhttp://www.visualpharm.com"
            color: Theme.secondaryColor
            x: Theme.paddingLarge
            font.pixelSize: Theme.fontSizeExtraSmall
            width: column.width - Theme.paddingLarge * 2
            wrapMode: Text.WordWrap
        }
    }

    MouseArea{
        anchors.fill: parent
        onClicked: pageStack.pop()
    }
}
