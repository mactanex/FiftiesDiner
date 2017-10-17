#include "rabat.h"
#include <QTextStream>
#include <QDebug>

rabat::rabat(QObject *parent) : QObject(parent)
{
    QString filename = "MyFile.txt";
    read(filename);

}
void rabat::write(QString filename)
{
    QFile file(filename);
    // Trying to open in WriteOnly and Text mode
    if(!file.open(QFile::WriteOnly |
                  QFile::Text))
    {
        qDebug() << " Could not open file for writing";
        return;
    }

    // To write text, we use operator<<(),
    // which is overloaded to take
    // a QTextStream on the left
    // and data types (including QString) on the right

    QTextStream out(&file);
    out << m_number;
    file.flush();
    file.close();
}

void rabat::read(QString filename)
{
    QFile file(filename);
    if(!file.open(QFile::ReadOnly |
                  QFile::Text))
    {
        qDebug() << " Could not open the file for reading";
        return;
    }

    QTextStream in(&file);
    QString myText = in.readAll();

    m_number = myText.toInt();
    m_text = "Du har nu " + QString::number(m_number) + " rabatkuponer.";

    file.close();
}


void rabat::checkCode(const QString &input)
{
    QString filename = "MyFile.txt";
    read(filename);
    if (m_code == input)
    {
       if (m_number < 6)
            m_number += 1;
    }
    else if (m_discount == input)
        m_number = 0;

    write(filename);
    read(filename);

}


QString rabat::getCode()
{
    return m_code;
}

int rabat::getNumber()
{
    return m_number;
}
QString rabat::getText()
{
    return m_text;
}
