#!/bin/bash
source `dirname $0`/env.sh

python $BASE_DIR/example_project/manage.py runserver
