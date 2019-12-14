Since the Qt Company currently doesn't give a crap on providing qsqlmysql.dll in binary form, you have to build it on your own. Here is a build for Qt 5.12.3 / 5.13.1 / 5.14.0 for MSVC 2017 64-Bit and MinGW-w64 7.3. Download from https://github.com/thecodemonkey86/qt_mysql_driver/releases

Deployment

1) in application subdirectory "sqldrivers" qsqlmysql.dll (Release) / qsqlmysqld.dll (Debug)
2) the MySQL library itself libmysql.dll
