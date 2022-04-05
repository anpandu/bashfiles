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
  if [ "$1" = "_booru" ]; then
    result=$dirname;
  fi
  echo $result
}

function auto_download() {
  subsubdirs=($(ls -rt $SCRIPT_DIR/$1/ | xargs -I{} echo $SCRIPT_DIR/$1/{}));
  excludes=$(cat $SCRIPT_DIR/$1/excludes.txt) # bug for "(" + ")" chars
  echo $excludes
  echo $excludes
  echo $excludes
  # echo $excludes
  for subsubdir in "${subsubdirs[@]}"; do
    url=$(get_url_from_dir $1 $subsubdir)
    subsubdirname=$(echo "$subsubdir" | sed "s/.*\///")
    # echo $subsubdirname
    if [[ ! $excludes =~ $subsubdirname ]]; then
      if [ "$1" = "_booru" ]; then
        echo "./gdlbooru.sh \"$url\""
        ./gdlbooru.sh $url
      else
        echo "gallery-dl $url"
        gallery-dl $url
      fi
    else
      echo "Skipping $subsubdirname"
    fi
  done;
}

auto_download $1
