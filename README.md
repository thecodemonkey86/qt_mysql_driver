Typical symptom when trying to connect to MySQL / MariaDB using Qt but without the necessary plugin is the runtime error 


<pre><code>
 QSqlDatabase: QMYSQL driver not loaded
 QSqlDatabase: available drivers: QMYSQL
</code></pre>


Since the Qt Company cannot provide qsqlmysql.dll / libqsqlmysql.so in binary form, you have to build it on your own, which can be a pain. Here is a build for various Qt versions. Get precompiled qsqlmysql.dll for Windows / libqsqlmysql.so for Linux from <a href="https://github.com/thecodemonkey86/qt_mysql_driver/releases">releases</a>

<b>
Latest Qt version: Download for Qt 6.3.1 <a href="https://github.com/thecodemonkey86/qt_mysql_driver/releases/tag/qmysql_6.3.1">here</a>
</b>
<br>


<h4>Deployment</h4>

1) put qsqlmysql.dll / qsqlmysqld.dll in application subdirectory "sqldrivers" 
2) put libmysql.dll (the MySQL library itself) and the OpenSSL v1.1 libraries, libcrypto-1_1 and libssl-1_1, in your application dir 

<hr>
<h4>Building from source (Qt6/CMake)</h4>

<h5>Windows</h5>
for MSVC:

Prerequisites:
1. Install MSVC Compiler (C++ Desktop Toolkit from [Visual Studio 2022 Setup](https://c2rsetup.officeapps.live.com/c2r/downloadVS.aspx?sku=community&channel=Release&version=VS2022&source=VSLandingPage&includeRecommended=true&cid=2030))
2. Install Qt incl. Sources, CMake and Ninja from Maintenance Tool
3. Install MySQL library, e.g. by using [Oracle's Installer](https://dev.mysql.com/downloads/installer/) or use the zip file from [here](https://github.com/thecodemonkey86/qt_mysql_driver/releases/tag/libmysql)

```console
set PATH=%PATH%;C:\Qt\Tools\CMake_64\bin;C:\Qt\Tools\Ninja
cd C:\Qt\6.4.0\Src\qtbase\src\plugins\sqldrivers
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
call C:\Qt\6.4.0\msvc2019_64\bin\qt-cmake.bat -G "Ninja" . -DMySQL_INCLUDE_DIR="C:\mysql_8.0.29\include" -DMySQL_LIBRARY="C:\mysql_8.0.29\lib\libmysql.lib" -DCMAKE_INSTALL_PREFIX="C:\Qt\6.4.0\msvc2019_64"
ninja
ninja install
call C:\Qt\6.4.0\msvc2019_64\bin\qt-cmake.bat -G "Ninja" . -DMySQL_INCLUDE_DIR="C:\mysql_8.0.29\include" -DMySQL_LIBRARY="C:\mysql_8.0.29\lib\libmysql.lib" -DCMAKE_INSTALL_PREFIX="C:\Qt\6.4.0\msvc2019_64" -DCMAKE_BUILD_TYPE=Release
ninja
ninja install
pause
```

for MinGW:

Prerequisites:
1. Install Qt incl. Sources, CMake and MinGW from Maintenance Tool
2. Install MySQL library, e.g. by using [Oracle's Installer](https://dev.mysql.com/downloads/installer/) or use the zip file from [here](https://github.com/thecodemonkey86/qt_mysql_driver/releases/tag/libmysql)

```console
set PATH=%PATH%;C:\Qt\Tools\mingw1120_64\bin;C:\Qt\Tools\CMake_64\bin
cd C:\Qt\6.4.0\Src\qtbase\src\plugins\sqldrivers
call C:\Qt\6.4.0\mingw_64\bin\qt-cmake.bat -G "MinGW Makefiles" . -DMySQL_INCLUDE_DIR="C:\mysql_8.0.29\include" -DMySQL_LIBRARY="C:\mysql_8.0.29\lib\libmysql.lib" -DCMAKE_INSTALL_PREFIX="C:\Qt\6.4.0\mingw_64" -DCMAKE_C_COMPILER="gcc.exe" -DCMAKE_CXX_COMPILER="g++.exe"
mingw32-make
mingw32-make install
pause
```
