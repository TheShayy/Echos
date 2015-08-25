#include "user.h"

User::User(QString _nick, unsigned short _color, QString _mode, bool _colored)
{
    nick = _nick, mode = _mode, colored = _colored, color = _color;
}

User::User(QString _nick, QString _mode)
{
    nick = _nick, mode = _mode, colored = true;
    qsrand(QTime::currentTime().msec());
    color = (qrand() % (13 - 2) + 1) + 2;
}

QString User::getNick() const
{
    return nick;
}

QString User::getMode() const
{
    return mode;
}

bool User::getColored() const
{
    return colored;
}

unsigned short User::getColor() const
{
    return color;
}

QString User::getColoredName() const
{
    return "\x03" + QString(color < 10 ? "0" : "") + QString::number(color) + ",14" + nick + "\x03""00,14";
}

void User::setNick(QString _nick)
{
    nick = _nick;
}

void User::setMode(QString _mode)
{
    mode = _mode;
}

void User::setColored(bool _colored)
{
    colored = _colored;
}

void User::setColor(unsigned short _color)
{
    color = _color;
}
