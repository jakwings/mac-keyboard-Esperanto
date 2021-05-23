#!/bin/sh

set -euf

export PATH='/usr/bin:/bin'

cd -- "$(dirname -- "$0")"

if iconutil -c icns -o Esperanto.icns Esperanto.iconset >/dev/null 2>&1
then
    echo 'Compiled Esperanto.icns successfully!'
else
    echo 'Failed to compile Esperanto.icns!'
    exit 1
fi
