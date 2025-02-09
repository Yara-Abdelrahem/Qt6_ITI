#ifndef CAPSLOCK_H
#define CAPSLOCK_H

#include <QObject>

class CapsLock : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool isCaps READ isCaps NOTIFY capsLockChanged)

public:
    explicit CapsLock(QObject *parent = nullptr);
    Q_INVOKABLE bool isCaps();
    Q_INVOKABLE bool capsStatus();
    Q_INVOKABLE void toggleCapsLock();

signals:
    void capsLockChanged();

};

#endif // CAPSLOCK_H
