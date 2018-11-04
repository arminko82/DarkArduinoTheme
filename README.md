![screenshot](https://raw.githubusercontent.com/jeffThompson/DarkArduinoTheme/master/screenshot.png)*Dark Theme without Dark Mode*

![screenshot](https://raw.githubusercontent.com/arminko82/DarkArduinoTheme/master/screenshot2.png)*Dark Theme with Dark Mode*

Dark Arduino Theme + Dark Mode for MacOs
========================================

### INTRODUCTION

In addition for the forked project "Dark Arduino Theme" this project provides
a tweak to present the Arduino IDE completely in Dark Mode which has been
brought to you as a feature of MacOS Mojave.
Two scripts allow enabling/disabling Dark Mode.

### PREREQUISITES
    * Arduino IDE 1.8.5+
    * MacOS Mojave+

### HOWTO
    * Script DarkModeScript/enableDarkMode.sh enables DarkMode and starts IDE
    * Script DarkModeScript/disableDarkMode.sh restores original

DarkModeScript/files contains the original and altered state of Arduino's Info.plist


*The later description contains the forked project Dark Arduino Theme by
https://github.com/jeffThompson/DarkArduinoTheme*

Revised for Arduino version 1.8.5+, not tested with earlier versions.

\- \- \-

### INSTALLATION  

* Mac users should look in `~/Applications/Arduino.app/Contents/Java/lib` and replace the `theme` folder inside (making a copy of the original in case want to revert back).  
* Windows is located in `C:\Program Files (x86)\Arduino\lib`.  
* Linux will be in `/usr/share/arduino/lib/`  

### CREATING YOUR OWN MODS
The newest version of the Arduino IDE makes creating custom themes trickier: you now need to edit the `theme.txt` file, an XML file inside the `syntax` folder, and the button files. Unfortunately, not all items in the `theme.txt` file actually work, so if you can't get an item to change, try another one of the files.

\- \- \-

Released under [Creative Commons BY-NC-SA license](http://creativecommons.org/licenses/by-nc-sa/3.0/) - feel free to use but [please let me know](http://www.jeffreythompson.org).
