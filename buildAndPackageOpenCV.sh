#!/bin/bash
# License: MIT. See license file in root directory
# Copyright(c) JetsonHacks (2017-2018)

ARGS=""
PACKAGE_ARG_SET=NO
while [ "$1" != "" ]; do
    case $1 in
        -P | --package )        PACKAGE_ARG_SET=YES
                                ;;
    esac
	ARGS="$ARGS $1"
	shift
done
if [ $PACKAGE_ARG_SET == "NO" ] ; then
    ARGS="$ARGS -P"
fi
set -- $ARGS
source buildOpenCV.sh
