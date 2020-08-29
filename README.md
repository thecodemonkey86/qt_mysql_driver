Typical symptom when trying to connect to MySQL / MariaDB using Qt but without the necessary plugin is the runtime error 


<pre><code>
 QSqlDatabase: QMYSQL driver not loaded
 QSqlDatabase: available drivers: QMYSQL
</code></pre>


Since the Qt Company currently doesn't give a crap on providing qsqlmysql.dll in binary form, you have to build it on your own, which can be a pain. Here is a build for various Qt versions. Download precompiled qsqlmysql.dll from https://github.com/thecodemonkey86/qt_mysql_driver/releases

Deployment

1) put qsqlmysql.dll (if release build) / qsqlmysqld.dll (if debug build) in application subdirectory "sqldrivers" 
2) put libmysql.dll (the MySQL library itself) in your application dir 



If you want to use this repository for compiling it yourself:
Building hints
- Unlike the original .pro file this project can be built in Qt Creator, the source code is however unchanged
- See branches by Qt version for source code
- Make sure you link against the official MySQL C Connector v6.1 (not C++): https://downloads.mysql.com/archives/c-c/?version=6.1.11&amp;os=src
- The .pro file from this repository by default expects the contents of the zip file from mysql.com to be in the same base directory as the sql driver project
	e.g. D:\qt\src\sqldrivers is the sql driver project dir and D:\qt\src\mysql-connector-c-6.1.11-win32 is the MySQL connector library directory, so that there are D:\qt\src\mysql-connector-c-6.1.11-win32\include and \lib subdirs
