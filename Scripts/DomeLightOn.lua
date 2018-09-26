function check_dataref()		
	command_once("laminar/B738/toggle_switch/cockpit_dome_dn")
	command_once("laminar/B738/toggle_switch/cockpit_dome_dn")
end

check_dataref()
do_sometimes("check_dataref()")