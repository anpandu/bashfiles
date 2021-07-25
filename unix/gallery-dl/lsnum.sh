#!/bin/bash
num=$(ls "$@" | wc -l)
printf "%4s $@\n" "$num"
