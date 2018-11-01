TEMPLATE = app
TARGET = Calculator

VERSION = 1.0.0
win32 {
    RC_ICONS = Calculator.ico
    QMAKE_TARGET_PRODUCT = "Calculator"
    QMAKE_TARGET_DESCRIPTION = "Calculator"
    QMAKE_TARGET_COMPANY = "ZhaoTY"
    QMAKE_TARGET_COPYRIGHT = "Copyright (C) 2018 "$$QMAKE_TARGET_COMPANY

    CONFIG(release,debug|release) {
        DESTDIR += release
        DEPLOYMENT_OPTS += --release
        DEPLOYMENT_OPTS += --force
        DEPLOYMENT_OPTS += --no-translations
        DEPLOYMENT_OPTS += --no-svg
        DEPLOYMENT_OPTS += --no-angle
        DEPLOYMENT_OPTS += --no-opengl-sw
        DEPLOYMENT_OPTS += --no-system-d3d-compiler
        QMAKE_POST_LINK = windeployqt $$DEPLOYMENT_OPTS $$DESTDIR
    }
}

QT += widgets
QT += gui

OBJECTS_DIR += objects
MOC_DIR += objects
RCC_DIR += objects
UI_DIR += objects


HEADERS =   button.h \
            calculator.h

SOURCES =   button.cpp \
            calculator.cpp \
            main.cpp

