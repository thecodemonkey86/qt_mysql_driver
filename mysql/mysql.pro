TARGET = qsqlmysql

HEADERS += $$PWD/qsql_mysql_p.h
SOURCES += $$PWD/qsql_mysql.cpp $$PWD/main.cpp

#QMAKE_USE += mysql

OTHER_FILES += mysql.json
load(qt_build_config)
PLUGIN_CLASS_NAME = QMYSQLDriverPlugin
include($$PWD/../qsqldriverbase.pri)


contains(QT_ARCH, i386) {
INCLUDEPATH += $$PWD/../../mysql-connector-c-6.1.2-win32\include
LIBS += -L$$PWD/../../mysql-connector-c-6.1.2-win32\lib -llibmysql
} else {
INCLUDEPATH += $$PWD/../../mysql-connector-c-6.1.2-winx64\include
LIBS += -L$$PWD/../../mysql-connector-c-6.1.2-winx64\lib -llibmysql
}

