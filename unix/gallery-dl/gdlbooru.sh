#!/bin/bash

url_dan="https://danbooru.donmai.us/posts?tags=$1"
url_gel="https://gelbooru.com/index.php?page=post&s=list&tags=$1"
url_lol="https://lolibooru.moe/post?tags=$1"
url_rul="https://rule34.xxx/index.php?page=post&s=list&tags=$1"
url_yan="https://yande.re/post?tags=$1"

echo "# downloading danbooru"
gallery-dl -c ~/.gallery-dl-booru.conf $url_dan
echo "# downloading gelbooru"
gallery-dl -c ~/.gallery-dl-booru.conf $url_gel
echo "# downloading lolibooru"
gallery-dl -c ~/.gallery-dl-booru.conf $url_lol
echo "# downloading rule34"
gallery-dl -c ~/.gallery-dl-booru.conf $url_rul
echo "# downloading yandere"
gallery-dl -c ~/.gallery-dl-booru.conf $url_yan
