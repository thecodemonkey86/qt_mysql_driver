QT += sql

TARGET = qsqlmysql

HEADERS += $$PWD/qsql_mysql_p.h
SOURCES += $$PWD/qsql_mysql.cpp $$PWD/main.cpp

#QMAKE_USE += mysql

OTHER_FILES += mysql.json

PLUGIN_CLASS_NAME = QMYSQLDriverPlugin
include( $$PWD/../qsqldriverbase.pri)



unix|win32: LIBS += -L$$PWD/'../../../../../../../../Program Files/MySQL/MySQL Connector C 6.1/lib/' -llibmysql

INCLUDEPATH += $$PWD/'../../../../../../../../Program Files/MySQL/MySQL Connector C 6.1/include'
DEPENDPATH += $$PWD/'../../../../../../../../Program Files/MySQL/MySQL Connector C 6.1/include'
