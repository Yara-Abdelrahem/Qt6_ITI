#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "capslock.h"
#include "systemmonitor.h"
int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    CapsLock capslock ;
    SystemMonitor sysMonitor;
    engine.rootContext()->setContextProperty("capslock", &capslock);
    engine.rootContext()->setContextProperty("sysMonitor", &sysMonitor);
    /*
    CapsLock capslock = new capslock ;
    SystemMonitor sysMonitor = new SystemMonitor;
    engine.rootContext()->setContextProperty("capslock", &capslock);
    engine.rootContext()->setContextProperty("sysMonitor", &sysMonitor);
    */
    engine.loadFromModule("CapsLockLed", "Main");

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
