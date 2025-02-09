#include <unistd.h>
#include <iostream>
#include "capslock.h"
#include <X11/Xlib.h>
#include <X11/XKBlib.h>
#include <X11/keysym.h>
#include <X11/extensions/XTest.h>
CapsLock::CapsLock(QObject *parent)
    : QObject(parent) {}

bool CapsLock::isCaps() {
    return capsStatus();
}

bool CapsLock::capsStatus() {
    Display* display = XOpenDisplay(nullptr);
    if (!display) {
        std::cerr << "Error: Cannot open X display!" << std::endl;
        return false;
    }

    unsigned int state;
    XkbGetIndicatorState(display, XkbUseCoreKbd, &state);
    XCloseDisplay(display);

    return state & 1;  //Check Caps Lock state
}

void CapsLock::toggleCapsLock() { // Renamed to describe action
    Display* display = XOpenDisplay(nullptr);
    if (!display) {
        std::cerr << "Error: Cannot open X display!" << std::endl;
        return;
    }

    KeyCode capsLockKeyCode = XKeysymToKeycode(display, XK_Caps_Lock);

    // Simulate Caps Lock key press and release
    XTestFakeKeyEvent(display, capsLockKeyCode, true, CurrentTime);
    XTestFakeKeyEvent(display, capsLockKeyCode, false, CurrentTime);

    XFlush(display);
    XCloseDisplay(display);

    emit capsLockChanged();
}
