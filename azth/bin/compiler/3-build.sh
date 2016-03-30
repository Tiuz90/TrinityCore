#!/bin/bash

. "includes/includes.sh"


[ $MTHREADS == 0 ] && MTHREADS=`grep -c ^processor /proc/cpuinfo` && MTHREADS=$(($MTHREADS + 2))

echo "Using $MTHREADS threads"

CWD=$(pwd)

cd $BUILDPATH

time make -j $MTHREADS
make -j $MTHREADS install

cd $CWD

runHooks "ON_AFTER_BUILD"
