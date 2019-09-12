Since the Qt Company currently doesn't give a crap on providing qsqlmysql.dll in binary form, you have to build it on your own. Here is a build for Qt 5.13.1 / MSVC 2017 64-Bit 

Deployment

1) in application subdirectory "sqldrivers" qsqlmysql.dll (Release) / qsqlmysqld.dll (Debug)
2) the MySQL library itself libmysql.dll
