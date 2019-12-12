# XP_EHID
X-Plane &lt;-> EHID Interface

NON-COMMERCIAL, HOME USE ONLY. 
CONTACT ME FOR COMMERCIAL(NON HOME) USE.
USE AT YOUR OWN RISK.

This software allows connection of EHID compatible hardware (mainly Cockpitsonic) with X-Plane.
I'm only using with Cockpitsonic 737 panels and the Zibo737, but it should work with all panels and X-Plane aircrafts (some scripting required)

Requirements: 
- [ExtPlane](https://github.com/vranki/ExtPlane/releases)
- [FlyWithLua](https://forums.x-plane.org/index.php?/files/file/38445-flywithlua-complete-edition-for-x-plane-11-windows-linux-mac-os-x-version/)
- X-Plane
- [Zibo737](https://forums.x-plane.org/index.php?/forums/topic/138974-b737-800x-zibo-mod-info-installation-download-links/)
- [EHID + EHID XML B737 + get a EHID License](http://www.uweschneider.de/en/EHID_endusers.php)
- Cockpitsonic (EHID) hardware
- [C++ Redistributalbe 2015](https://www.microsoft.com/de-de/download/details.aspx?id=48145&irgwc=1&OCID=AID2000142_aff_7806_1246483&tduid=(ir__6yikbsc9v9kftlhekk0sohz3xm2xgf0wsllpmwdh00)(7806)(1246483)(%28f800cddac127e445d980a1b9fba3b75e%29%2881561%29%282136356%29%28%29%28%29)(f800cddac127e445d980a1b9fba3b75e)&irclickid=_6yikbsc9v9kftlhekk0sohz3xm2xgf0wsllpmwdh00)

Tested with:
- X-Plane 11.26
- Zibo 737 3.36

Setup:
1. Install EHID and EHID_XML_B737. Enter the license information you got from the EHID developers.
	- You can confirm everything is working as expected by opening EHID from your task bar. It should show the panels connect to your PC.
	- If it doesn't show any device connected, your license is probably not installed correctly. A restart of EHID might he	
2. Install ExtPlane and FlyWithLua
3. Copy the .lua files from the "Scripts" folder to "...\X-Plane 11\Resources\plugins\FlyWithLua\Scripts"
	- After this step, all switch guards in the virtual cockpit should open automatically.
	- If this doesn't happen, there is probably something wrong with your FlyWithLua installation
	- Not all scripts are required. See "FlyWithLua" section below for more information
4. Run ExtPlane_EHID.exe
	- you should see every input/output in the monitor.
	
### Configuration
config/settings.cfg contains some settings which can be changed by the user.
Open it with an editor of your choise, I recommend Notepad++.
There is always one or two lines description followed by a value. Simply modify the value and save the file.
Take care that there are no spaces (" ") behind or in front of the values
For now, the following parameters can be changed:

##### X-Plane PC IP:
 IP Adress of the PC running X-Plane. Default: 127.0.0.1
 
##### Display / Annunciator brightness
 You can change the brightness of your Displays (COMM, NAV, ADF, ATC, FLT/LAND ALT).
 Range: 0 (very dim) - 255 (very bright)
 "BRIGHT" is the default setting with the "LIGHTS" switch on the MIP in the "BRT" position and AC power available.
 "DIM" is the brightness value with the "LIGHTS" switch in the "DIM" position
 
##### //annunciator+display brightness at 24VDC compared to 28VDC in % (0-100)
 When the BAT BUS voltage drops from 28V (AC Power on) to 24V (BAT ONLY), the annunciator and display brightness will decrease. 
 This percentage sets by how much. 

		
### Todo

- Background brightness control
- Aft overhead (I don't own a cockpitsonic AFT overhead, please open an issue when needed)

	
## FlyWithLua Scripts

These two Flywithlua scripts are required for a smooth operation of XP_EHID.
Here you can find some more useful FWL Scripts for homecockpit builders: https://github.com/Clamb94/FlyWithLua-Scripts/

#### ZiboCommands.lua
Required for use of XP_EHID. Can be used with other programs which execute X-Plane commands as well.
	
#### OpenGuards.lua
Opens all switch guards (black/red). Basically required for XP_EHID.
	


