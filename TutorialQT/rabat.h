#ifndef RABAT_H
#define RABAT_H

#include <QObject>
#include <QFile>


class rabat : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString m_code READ getCode())
    Q_PROPERTY(int m_number READ getNumber())
    Q_PROPERTY(QString m_text READ getText())
public:
    explicit rabat(QObject *parent = nullptr);

    Q_INVOKABLE void checkCode(const QString &input);
    void read(QString filename);
    void write(QString filename);
    QString getCode();
    int getNumber();
    QString getText();

signals:

public slots:

private:
    QString m_code = "123456";
    QString m_discount = "654321";
    int m_number = 0;
    QString m_text = "";

};

#endif // RABAT_H
