#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qqmlcontext.h>
#include "rabat.h"
#include <QFile>
#include <QString>
#include <QDebug>
#include <QTextStream>


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    rabat Rabat;


    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("rabat", &Rabat);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
