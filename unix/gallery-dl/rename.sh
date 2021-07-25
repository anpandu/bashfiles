#!/bin/bash

# 20425536 mdf0qa4

a="6754627_aruma_ayu"
b="aruma_ayu_6754627"

# mkdir -p ./gallery-dl/pixiv/$b

for old in ./gallery-dl/pixiv/$b/*; do
  new=$(echo $old | sed -e "s/$a/$b/")
  echo $old;
  echo $new;
  mv $old $new;
  echo "";
done;

# mv ./gallery-dl/pixiv/$a ./gallery-dl/pixiv/___$a