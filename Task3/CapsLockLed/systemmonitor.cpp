#include "systemmonitor.h"
#include <fstream>
#include <iostream>
SystemMonitor::SystemMonitor(QObject *parent)
    : QObject{parent}
{}


double SystemMonitor::getCpuTemperature() {
    return readTemperature();
}

double SystemMonitor::readTemperature() {
    std::ifstream tempFile("/sys/class/thermal/thermal_zone0/temp");
    double temp = 0.0;
    if (tempFile.is_open()) {
        tempFile >> temp;
        temp /= 1000.0; // Convert from millidegrees to degrees
    }
    return temp;
}
