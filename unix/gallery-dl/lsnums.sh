#!/bin/bash

find $1 -maxdepth 0 -type d -print | sed -e "s/'/\\\'/g" | xargs -I% ./lsnum.sh %