import QtQuick 2.7


Page1Form {

    button1.onClicked: {
        console.log("Button Pressed. Entered text: " + textField1.text + " || code: " + rabat.m_code);

        rabat.checkCode(textField1.text);
        textField1.text = "";
        text2.text = rabat.m_text;
    }
}
