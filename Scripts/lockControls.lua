	--[[
LockControls by Axel Reinemuth

This FlyWithLua script will automatically disable primary flight control inputs when the autopilot is engaged.

How to use:
1. Install FlyWithLua ( https://forums.x-plane.org/index.php?/files/file/38445-flywithlua-ng-next-generation-edition-for-x-plane-11-win-lin-mac/ )
2. Place this Scipt in the folder "X-Plane 11\Resources\plugins\FlyWithLua\Scripts"
3. Done
]]--

dataref("override_roll", "sim/joystick/yoke_roll_ratio", "writeable")
dataref("override_pitch", "sim/joystick/yoke_pitch_ratio", "writeable")
dataref("override_heading", "sim/joystick/yoke_heading_ratio", "writeable")

dataref("apMode", "sim/cockpit/autopilot/autopilot_mode", "writeable")

function checkAP()
	if apMode == 2 then 	
		override_roll = 0
		override_pitch = 0
		override_heading = 0		
	end
end

do_every_frame("checkAP()")