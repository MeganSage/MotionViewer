#-------------------------------------------------
#
# Project created by QtCreator 2019-10-12T15:43:25
#
#-------------------------------------------------

QT       += core gui network serialport xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = MotionViewer
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        mainwindow.cpp \
    aboutdlg.cpp \
    ndicomm.cpp \
    ndiviewer.cpp \
    holocomm.cpp \
    holoviewer.cpp \
    nditool.cpp \
    transform.cpp \
    regiviewer.cpp \
    xmlparser.cpp

HEADERS += \
        mainwindow.h \
    aboutdlg.h \
    ndicomm.h \
    ndiviewer.h \
    holocomm.h \
    holoviewer.h \
    nditool.h \
    transform.h \
    regiviewer.h \
    xmlparser.h

FORMS += \
        mainwindow.ui \
    aboutdlg.ui \
    ndiviewer.ui \
    ndicomm.ui \
    holocomm.ui \
    holoviewer.ui \
    regiviewer.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resources.qrc

RC_ICONS = viewer.ico

# Add OpenCV config
include(opencv.pri)

# Add Eigen config
include(eigen.pri)


# Add translations
TRANSLATIONS += translation_zh.ts