TEMPLATE = subdirs

sqldrivers_standalone {
    _QMAKE_CACHE_ = $$shadowed($$SQLDRV_SRC_TREE)/.qmake.conf
    load(qt_configure)
}

SUBDIRS += mysql
