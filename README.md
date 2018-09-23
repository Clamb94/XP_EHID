# XP_EHID
X-Plane &lt;-> EHID Interface
Use at your own risk. 

This software allows connection of EHID compatible hardware (mainly Cockpitsonic) with X-Plane.
I'm only using with Cockpitsonic 737 panels and the Zibo737, but it should work with all panels and X-Plane aircrafts (some scripting required)

Requirements: 
- ExtPlane ( https://github.com/vranki/ExtPlane/releases )
- FlyWithLua ( https://forums.x-plane.org/index.php?/files/file/38445-flywithlua-complete-edition-for-x-plane-11-windows-linux-mac-os-x-version/ )
- X-Plane
- Zibo737 ( https://forums.x-plane.org/index.php?/forums/topic/138974-b737-800x-zibo-mod-info-installation-download-links/ )
- EHID + EHID XML B737 + get a EHID License ( http://www.uweschneider.de/en/EHID_endusers.php )
- Cockpitsonic (EHID) hardware

Tested with:
- X-Plane 11.20

Setup:
1. Install EHID and EHID_XML_B737. Enter the license information you got from the EHID developers.
1.1. You can confirm everything is working as expected by opening EHID from your task bar. It should show the panels connect to your PC.
If it doesn't show any device connected, your license is probably not installed correctly. A restart of EHID might help.	
		
2. Install ExtPlane and FlyWithLua

3. Copy the .lua files from the "Scripts" folder to "...\X-Plane 11\Resources\plugins\FlyWithLua\Scripts"

3.1 After this step, all switch guards in the virtual cockpit should open automatically. If this doesn't happen, there is probably something wrong with your FlyWithLua installation

4. Run ExtPlane_EHID.exe

4.1 You should see every input/output in the monitor.
	
