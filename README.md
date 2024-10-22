
# Switch Screen for CS2

This app will provide you a switch that allows **only your main screen** to work **during csgo's sessions** (to save fps) and that will **extends screens where you close the game**.

## Installation

To install this app you just need to download the repo (or clone), then open **1_SwitchScreen.vbs**

This will copy the .vbs and the .bat to the startup program's folder, so that will work every time that you launch your game!



*after installing the VBS you can delete the files from the download's folder*


## Disable

To disable it you have open the **Taskmanager** (`ctrl + alt + del` then Taskmanager)

In the Startup tab, `right click` on 1_SwitchScreen.vbs and 2_SwitchScreen.bat and disable them, then reboot


## Uninstall

To uninstall the app you have to **delete it from startup program's folder**

To do it press `windows + R` and write *shell:startup*

Delete **1_SwitchScreen.vbs and 2_SwitchScreen.bat** then reboot

You can also **disable it** in the task Manager, startup tab

## Bad screen

This script switch the display to the 1st screen only when you launch Cs2; type "/external" instead of "/internal" if the internal monitor is not wich one you need **line 33 in the 2_SwitchScreen.bat file** then reinstall the programm
