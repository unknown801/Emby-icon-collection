#!/bin/sh

ICON_SRC_URL="$1"
ICON_PATH="$2"
# GH_PROXY_HOST="$3"
mkdir $(dirname $ICON_PATH) -p
echo $(curl $ICON_SRC_URL | sed "s|https://raw.githubusercontent.com|https://ghfast.top/https://raw.githubusercontent.com|g") | sed "s|https:\\\/\\\/raw.githubusercontent.com|https:\\\/\\\/ghfast.top\\\/https:\\\/\\\/raw.githubusercontent.com|g" > $ICON_PATH
FINAL_ICON_PATH="https://ghfast.top/https://raw.githubusercontent.com/Reborn/Emby-icon-collection/refs/heads/main/$ICON_PATH"
echo $FINAL_ICON_PATH
