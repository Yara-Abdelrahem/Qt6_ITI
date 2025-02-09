#ifndef SYSTEMMONITOR_H
#define SYSTEMMONITOR_H

#include <QObject>

class SystemMonitor : public QObject
{
    Q_OBJECT
public:
    explicit SystemMonitor(QObject *parent = nullptr);
    Q_INVOKABLE double getCpuTemperature();

signals:
    void cpuTemperatureChanged();

private:
    double readTemperature();
};

#endif // SYSTEMMONITOR_H
