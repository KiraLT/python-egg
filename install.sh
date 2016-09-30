#!/bin/bash
cd $(dirname $BASH_SOURCE)
PYTHON_CMD=$(cat python.txt)
virtualenv -p $PYTHON_CMD .
bin/python setup.py develop
