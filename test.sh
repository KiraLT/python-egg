#!/bin/bash
RED=`echo '\x1b[31m'`
GREEN=`echo '\x1b[32m'`
CYAN=`echo '\x1b[34m'`
RESET=`echo '\x1b[0m'`
MAGENTA=`echo '\x1b[35m'`
PYTHON_CMD=$(cat python.txt)

cd $(dirname $BASH_SOURCE)

while true
do
    $PYTHON_CMD setup.py test 2>&1 | sed "s/.*[oO][kK]$/$GREEN&$RESET/" \
                               | sed "s/.*ERROR$/$MAGENTA&$RESET/" \
                               | sed "s/.*FAIL$/$RED&$RESET/" \
                               | sed "s/^FAILED.*/$RED&$RESET/" \
                               | sed "s/.*skipped.*/$CYAN&$RESET/" \
                               | sed "s/^ERROR:/$MAGENTA&/" \
                               | sed "s/^FAIL.*/$RED&/" \
                               | sed "s/^Ran.*tests in.*/$RESET&/" \
                               | sed "s/^=*$/$RESET&/"
    echo
    echo 'ENTER to run again'
    read
done
