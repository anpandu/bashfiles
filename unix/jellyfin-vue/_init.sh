#!/bin/bash

git clone https://github.com/jellyfin/jellyfin-vue
docker build . -t jellyfin-vue:latest
