#!/bin/sh

set -e

export PATH='/usr/bin:/bin'

cd -- "$(dirname -- "$0")"

if iconutil -c icns -o Esperanto.icns Esperanto.iconset >&- 2>&-
then
    echo 'Compiled Esperanto.icns successfully!'
else
    mv Esperanto.iconset/Contents.json ./
    if iconutil -c icns -o Esperanto.icns Esperanto.iconset
    then
        echo 'Compiled Esperanto.icns successfully!'
    else
        echo 'Failed to compile Esperanto.icns!'
    fi
    mv ./Contents.json Esperanto.iconset/
fi
