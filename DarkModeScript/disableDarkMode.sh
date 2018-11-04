#!/bin/sh -e
# NOTE: This can only be run after enableDarkMode.sh had been executed before.

FOLDER="/Applications/Arduino.app/Contents"
FILE="Info.plist"
FP="$FOLDER/$FILE"
BACKUP="$FP.bak"

if pgrep Arduino > /dev/null; then
    echo "Please close the running instance of Arduino before!"
    echo ""
    exit 1
fi

echo ""
echo "Recovering backup of $FP ..."
mv $BACKUP $FP
echo "Dark Mode disabled"
echo ""
