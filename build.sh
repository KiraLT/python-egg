#!/bin/bash
cd $(dirname $BASH_SOURCE)
PYTHON_CMD=$(cat python.txt)
$PYTHON_CMD setup.py bdist_egg
echo
echo 'Done, ENTER to exit'
read
