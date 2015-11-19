#!/bin/sh
APP_BASE=`basename $0 | sed s,\.sh$,,`
APP_DIR=`dirname $0`
APP_TMP="${APP_DIR#?}"

if [ "${APP_DIR%$APP_TMP}" != "/" ];
then
	APP_DIR=$PWD/$APP_DIR
fi

LD_LIBRARY_PATH=$APP_DIR
export LD_LIBRARY_PATH
$APP_DIR/$APP_BASE "$@"
