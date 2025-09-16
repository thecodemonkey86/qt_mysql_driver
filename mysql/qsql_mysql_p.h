/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the QtSql module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 3 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPL3 included in the
** packaging of this file. Please review the following information to
** ensure the GNU Lesser General Public License version 3 requirements
** will be met: https://www.gnu.org/licenses/lgpl-3.0.html.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 2.0 or (at your option) the GNU General
** Public license version 3 or any later version approved by the KDE Free
** Qt Foundation. The licenses are as published by the Free Software
** Foundation and appearing in the file LICENSE.GPL2 and LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-2.0.html and
** https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

#ifndef QSQL_MYSQL_H
#define QSQL_MYSQL_H

//
//  W A R N I N G
//  -------------
//
// This file is not part of the Qt API.  It exists purely as an
// implementation detail.  This header file may change from version to
// version without notice, or even be removed.
//
// We mean it.
//

#include <QtSql/qsqldriver.h>

#if defined (Q_OS_WIN32)
#include <QtCore/qt_windows.h>
#endif

#include <mysql.h>

#ifdef QT_PLUGIN
#define Q_EXPORT_SQLDRIVER_MYSQL
#else
#define Q_EXPORT_SQLDRIVER_MYSQL Q_SQL_EXPORT
#endif

QT_BEGIN_NAMESPACE

class QMYSQLDriverPrivate;

class Q_EXPORT_SQLDRIVER_MYSQL QMYSQLDriver : public QSqlDriver
{
    friend class QMYSQLResultPrivate;
    Q_DECLARE_PRIVATE(QMYSQLDriver)
    Q_OBJECT
public:
    explicit QMYSQLDriver(QObject *parent=0);
    explicit QMYSQLDriver(MYSQL *con, QObject * parent=0);
    ~QMYSQLDriver();
    bool hasFeature(DriverFeature f) const override;
    bool open(const QString & db,
               const QString & user,
               const QString & password,
               const QString & host,
               int port,
               const QString& connOpts) override;
    void close() override;
    QSqlResult *createResult() const override;
    QStringList tables(QSql::TableType) const override;
    QSqlIndex primaryIndex(const QString& tablename) const override;
    QSqlRecord record(const QString& tablename) const override;
    QString formatValue(const QSqlField &field,
                                     bool trimStrings) const override;
    QVariant handle() const override;
    QString escapeIdentifier(const QString &identifier, IdentifierType type) const override;

    bool isIdentifierEscaped(const QString &identifier, IdentifierType type) const override;

protected:
    bool beginTransaction() override;
    bool commitTransaction() override;
    bool rollbackTransaction() override;
private:
    void init();
};

QT_END_NAMESPACE

#endif // QSQL_MYSQL_H
