#!/bin/bash

echo "Create dir"
mkdir -p /home/anpandu/Pictures/gallery-dl/

echo "Copy gdl conf files"
cp .gallery-dl.conf /home/anpandu/
cp .gallery-dl-booru.conf /home/anpandu/

echo "Copy sh files"
cp *.sh /home/anpandu/Pictures/gallery-dl/
