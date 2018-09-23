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