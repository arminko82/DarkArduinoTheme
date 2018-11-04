#!/bin/sh -e

FOLDER="/Applications/Arduino.app/Contents"
#FOLDER="/tmp"
FILE="Info.plist"
FP="$FOLDER/$FILE"
BACKUP="$FP.bak"
APP="$FOLDER/MacOS/Arduino"

echo ""
echo "Trying to enable Dark Mode ..."
if pgrep Arduino > /dev/null; then
    echo "Please close the running instance of Arduino before!"
    echo ""
    exit 1
fi

if test -e $BACKUP; then
    echo "Dark Mode seems to have been enabled already. Use disableDarkMode.sh to get to the original state."
    echo ""
    exit 2
fi

echo "Creating backup for $FP ..."
cp $FP $BACKUP
echo "OK"
echo "Altering $FP"
sed -i '' "/<key>CFBundleExecutable<\/key>/ i\\
<key>NSRequiresAquaSystemAppearance</key>\
<string>False</string>
" $FP
echo "OK"
echo "DONE - Starting Arduino IDE"
`$APP` > /dev/null &
echo ""
