#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>

class BackEnd : public QObject
{
    Q_OBJECT

public:
    explicit BackEnd(QObject *parent = nullptr);


signals:


private:


};

#endif // BACKEND_H
