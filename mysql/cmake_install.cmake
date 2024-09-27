# Install script for directory: C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/mysql

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Qt/6.7.3/msvc2019_64")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "CMAKE_OBJDUMP-NOTFOUND")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Sql" TYPE FILE FILES
    "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/lib/cmake/Qt6Sql/Qt6QMYSQLDriverPluginConfig.cmake"
    "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/lib/cmake/Qt6Sql/Qt6QMYSQLDriverPluginConfigVersion.cmake"
    "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/lib/cmake/Qt6Sql/Qt6QMYSQLDriverPluginConfigVersionImpl.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/plugins/sqldrivers" TYPE MODULE FILES "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/plugins/sqldrivers/qsqlmysql.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/plugins/sqldrivers/qsqlmysql.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/plugins/sqldrivers/qsqlmysql.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "CMAKE_STRIP-NOTFOUND" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/plugins/sqldrivers/qsqlmysql.dll")
      endif()
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/plugins/sqldrivers" TYPE MODULE FILES "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/plugins/sqldrivers/qsqlmysqld.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/plugins/sqldrivers/qsqlmysqld.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/plugins/sqldrivers/qsqlmysqld.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "CMAKE_STRIP-NOTFOUND" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/plugins/sqldrivers/qsqlmysqld.dll")
      endif()
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Sql/Qt6QMYSQLDriverPluginTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Sql/Qt6QMYSQLDriverPluginTargets.cmake"
         "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/mysql/CMakeFiles/Export/6daf95e385d7cc8ad37a0af677fcce5d/Qt6QMYSQLDriverPluginTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Sql/Qt6QMYSQLDriverPluginTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Sql/Qt6QMYSQLDriverPluginTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Sql" TYPE FILE FILES "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/mysql/CMakeFiles/Export/6daf95e385d7cc8ad37a0af677fcce5d/Qt6QMYSQLDriverPluginTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Sql" TYPE FILE FILES "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/mysql/CMakeFiles/Export/6daf95e385d7cc8ad37a0af677fcce5d/Qt6QMYSQLDriverPluginTargets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Sql" TYPE FILE FILES "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/mysql/CMakeFiles/Export/6daf95e385d7cc8ad37a0af677fcce5d/Qt6QMYSQLDriverPluginTargets-relwithdebinfo.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/plugins/sqldrivers" TYPE FILE OPTIONAL FILES "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/plugins/sqldrivers/qsqlmysql.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/plugins/sqldrivers" TYPE FILE OPTIONAL FILES "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/plugins/sqldrivers/qsqlmysqld.pdb")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Sql" TYPE FILE FILES "C:/Qt/6.7.3/Src/qtbase/src/plugins/sqldrivers/lib/cmake/Qt6Sql/Qt6QMYSQLDriverPluginAdditionalTargetInfo.cmake")
endif()

