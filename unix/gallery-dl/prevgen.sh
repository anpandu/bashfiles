#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [ -z "$1" ]
  then
    echo "No arguments supplied."
    exit 1
fi

ls_result=$(ls $SCRIPT_DIR/$1 2> /dev/null)
if [ -z "$ls_result" ]
  then
    echo "Subdir \"$SCRIPT_DIR/$1\" is not existed."
    exit 1
fi

function preview_create() {
  for subsubdir in $SCRIPT_DIR/$1/*; do
    # remove previous preview
    path_preview=$(find $subsubdir|grep "__preview" | head -n 1)
    rm -rf $path_preview

    # get latest image file
    latest=$(ls -tr $subsubdir | grep -E "(\.jpg|\.png)$" | tail -n 1)
    latest_ext=$(echo $latest | cut -d'.' -f2)
    path_preview="$subsubdir/__preview.$latest_ext"
    path_latest="$subsubdir/$latest"
    echo "Creating preview $path_preview"
    # echo "cp $path_latest $path_preview"
    cp $path_latest $path_preview
    # echo "";
  done;
}

preview_create $1

