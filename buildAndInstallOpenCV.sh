#!/bin/bash
# License: MIT. See license file in root directory
# Copyright(c) JetsonHacks (2017-2018)

ARGS=""
INSTALL_ARG_SET=NO
while [ "$1" != "" ]; do
    case $1 in
        -I | --install )        INSTALL_ARG_SET=YES
                                ;;
    esac
	ARGS="$ARGS $1"
	shift
done
if [ $INSTALL_ARG_SET == "NO" ] ; then
    ARGS="$ARGS -I"
fi
set -- $ARGS
source buildOpenCV.sh

