Typical symptom when trying to connect to MySQL / MariaDB using Qt but without the necessary plugin is the runtime error 


<pre><code>
 QSqlDatabase: QMYSQL driver not loaded
 QSqlDatabase: available drivers: QMYSQL
</code></pre>


Since the Qt Company currently doesn't give a crap on providing qsqlmysql.dll / libqsqlmysql.so in binary form, you have to build it on your own, which can be a pain. Here is a build for various Qt versions. Get precompiled qsqlmysql.dll for Windows / libqsqlmysql.so for Linux from <a href="https://github.com/thecodemonkey86/qt_mysql_driver/releases">releases</a>

<b>
Latest Qt version: Download for Qt 6.2.2 <a href="https://github.com/thecodemonkey86/qt_mysql_driver/releases/tag/qmysql_6.2.2">here</a>
</b>
<br>


Deployment

1) put qsqlmysql.dll (if release build) / qsqlmysqld.dll (if debug build, but note that when using MinGW 8.1.0 the debug build is named qsqlmysql.dll as well) in application subdirectory "sqldrivers" 
2) put libmysql.dll (the MySQL library itself) and the OpenSSL v1.1 libraries, libcrypto-1_1 and libssl-1_1, in your application dir 



If you want to use this repository for compiling it yourself:
Building hints
- Unlike the original .pro file this project can be built in Qt Creator (currently works on Windows only), the source code is however unchanged
- See branches by Qt version for source code
- Make sure you link against the official MySQL C Connector v6.1/v8.0 (not C++): https://downloads.mysql.com/archives/c-c/?version=6.1.11&amp;os=src / https://dev.mysql.com/downloads/mysql/5.5.html?os=3&version=5
- The .pro file from this repository by default expects the contents of the zip file from mysql.com to be in the same base directory as the sql driver project
	e.g. D:\qt\src\sqldrivers is the sql driver project dir and D:\qt\src\mysql-connector-c-x.y.z-winx64 is the MySQL connector library directory, so that there are D:\qt\src\mysql-connector-c-x.y.z-winx64\include and \lib subdirs
