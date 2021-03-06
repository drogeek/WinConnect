QT += core
QT += network
QT += sql
QT += gui
QT += qml
QT += widgets

CONFIG += c++11

TARGET = WinConnect
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    query2json.cpp \
    servernotifier.cpp \
    abstractnotifier.cpp \
    connection.cpp \
    ramiProtocol.cpp \
    databaseaccess.cpp \
    optionxml.cpp \
    dberror.cpp

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += \
    query2json.h \
    servernotifier.h \
    abstractnotifier.h \
    connection.h \
    ramiProtocol.h \
    databaseaccess.h \
    optionxml.h \
    dberror.h

RESOURCES += \
    ui.qrc

RC_ICONS = logo_WinConnect.ico
