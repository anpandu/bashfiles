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

function get_dir_from_path() {
  echo $1 | grep -o '[^/]*$'
}

function get_url_from_dir() {
  dirname=$(get_dir_from_path $2)
  result=$dirname
  if [ "$1" = "pixiv" ]; then
    result=$(echo $2 | grep -o '[^_]*$')
    result="https://www.pixiv.net/en/users/$result"
  fi
  if [ "$1" = "twitter" ]; then
    result=$dirname;
    result="https://twitter.com/$result/media"
  fi
  echo $result
}

function auto_download() {
  for subsubdir in $SCRIPT_DIR/$1/*; do
    url=$(get_url_from_dir $1 $subsubdir)
    echo "gallery-dl $url"
    gallery-dl $url
  done;
}

auto_download $1
