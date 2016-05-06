#-------------------------------------------------
#
# Project created by QtCreator 2015-07-19T15:45:06
#
#-------------------------------------------------

QT       += core network
QT       -= gui

TARGET = UNObot
DESTDIR = ../build
CONFIG   += console
CONFIG   -= app_bundle

QMAKE_CFLAGS_RELEASE += -march=native -O3 -pipe -fomit-frame-pointer
QMAKE_CXXFLAGS_RELEASE += $$QMAKE_CFLAGS_RELEASE
QMAKE_LFLAGS_RELEASE += -s

TEMPLATE = app

SOURCES += main.cpp \
    uno.cpp \
    card.cpp \
    cards.cpp \
    deck.cpp \
    players.cpp \
    player.cpp \
    user.cpp \
    users.cpp \
    updater.cpp

HEADERS += \
    uno.h \
    card.h \
    cards.h \
    deck.h \
    players.h \
    player.h \
    user.h \
    users.h \
    commit_date.h \
    updater.h

include($$_PRO_FILE_PWD_/../libcommuni/src/core/core.pri)

TRANSLATIONS = translations/fr.ts
