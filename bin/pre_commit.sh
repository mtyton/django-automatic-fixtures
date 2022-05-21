#!/bin/bash
source `dirname $0`/env.sh

cd $BASE_DIR
pre-commit run --all-files
