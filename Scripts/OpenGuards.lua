	dataref("cov0", "laminar/B738/button_switch/cover_position", "readonly", 0)
	dataref("cov1", "laminar/B738/button_switch/cover_position", "readonly", 1)
	dataref("cov2", "laminar/B738/button_switch/cover_position", "readonly", 2)
	dataref("cov3", "laminar/B738/button_switch/cover_position", "readonly", 3)
	dataref("cov4", "laminar/B738/button_switch/cover_position", "readonly", 4)
	dataref("cov5", "laminar/B738/button_switch/cover_position", "readonly", 5)
	dataref("cov6", "laminar/B738/button_switch/cover_position", "readonly", 6)
	dataref("cov7", "laminar/B738/button_switch/cover_position", "readonly", 7)
	dataref("cov8", "laminar/B738/button_switch/cover_position", "readonly", 8)
	dataref("cov9", "laminar/B738/button_switch/cover_position", "readonly", 9)
	dataref("cov10", "laminar/B738/switches/spoiler_A_cover_pos", "readonly")
	dataref("cov11", "laminar/B738/switches/spoiler_B_cover_pos", "readonly")
	dataref("cov12", "laminar/B738/switches/flt_ctr_A_cover_pos", "readonly")
	dataref("cov13", "laminar/B738/switches/flt_ctr_B_cover_pos", "readonly")
	dataref("cov14", "laminar/B738/switches/alt_flaps_cover_pos", "readonly")
	dataref("cov15", "laminar/B738/button_switch/cover_position", "readonly", 10)
	dataref("cov16", "laminar/B738/switches/fdr_cover_pos", "readonly")

function check_cover()	
	if cov0 == 0 then command_once("laminar/B738/button_switch_cover00") end
	if cov1 == 0 then command_once("laminar/B738/button_switch_cover01") end
	if cov2 == 0 then command_once("laminar/B738/button_switch_cover02") end
	if cov3 == 0 then command_once("laminar/B738/button_switch_cover03") end
	if cov4 == 0 then command_once("laminar/B738/button_switch_cover04") end
	if cov5 == 0 then command_once("laminar/B738/button_switch_cover05") end
	if cov6 == 0 then command_once("laminar/B738/button_switch_cover06") end
	if cov7 == 0 then command_once("laminar/B738/button_switch_cover07") end
	if cov8 == 0 then command_once("laminar/B738/button_switch_cover08") end
	if cov9 == 0 then command_once("laminar/B738/button_switch_cover09") end
	if cov10 == 0 then command_once("laminar/B738/toggle_switch/spoiler_A_cover") end
	if cov11 == 0 then command_once("laminar/B738/toggle_switch/spoiler_B_cover") end
	if cov12 == 0 then command_once("laminar/B738/toggle_switch/flt_ctr_A_cover") end
	if cov13 == 0 then command_once("laminar/B738/toggle_switch/flt_ctr_B_cover") end
	if cov14 == 0 then command_once("laminar/B738/toggle_switch/alt_flaps_cover") end
	if cov15 == 0 then command_once("laminar/B738/button_switch_cover10") end
	if cov16 == 0 then command_once("laminar/B738/toggle_switch/fdr_cover") end
end

check_cover()
do_sometimes("check_cover()")