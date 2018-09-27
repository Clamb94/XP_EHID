function light_on()		
	command_once("laminar/B738/toggle_switch/cockpit_dome_dn")
	command_once("laminar/B738/toggle_switch/cockpit_dome_dn")
end

light_on()
do_sometimes("light_on()")