cmd = {} -- Holds command names (2D array) 
sw_dref = {} -- dref list
inc_cmd = {} -- incerase commands
dec_cmd = {} -- decrease commands
dref_val = {}
limit = 100 --maximum number of switches

for i = 0, limit do
	cmd[i] = {}
	dref_val[i] = "curr_pos_" .. i
end

-- VARIABLES ---------DO NOT EDIT ABOVE THIS LINE-----------------------------------------
--[[
This Script generates X-Plane commands which move a (rotary)switch. This is mainly used for cockpit builders
Each of the following blocks represents a switch. Look at the first block for a explanation.
The variables behind "cmd[x]" will be generated and can be called by other programs
The variables behind "inc_cmd" and "dec_cmd" need to be taken out of X-Plane. Use the "DataRefTool" to find the commands
]]--

logging = 1 -- show debug information in dev console

x = 0
sw_dref[x] = "laminar/B738/toggle_switch/vhf_nav_source" -- Dataref which holds the current switch position 
cmd[x][-1] = "lua/nav/VHF_BOTH1" -- Command which moves the switch to dataref position -1 
cmd[x][0] = "lua/nav/VHF_NORM"   -- Command which moves the switch to dataref position 0
cmd[x][1] = "lua/nav/VHF_BOTH2"  -- Command which moves the switch to dataref position 1
inc_cmd[x] = "laminar/B738/toggle_switch/vhf_nav_source_rgt" -- Command to move the switch one step. This should INcrease the dataref value of the switch
dec_cmd[x] = "laminar/B738/toggle_switch/vhf_nav_source_lft" -- Command to move the switch one step. This should DEcrease the dataref value of the switch

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/irs_source"
cmd[x][-1] = "lua/nav/IRS_BOTHL"
cmd[x][0] = "lua/nav/IRS_NORM"
cmd[x][1] = "lua/nav/IRS_BOTHR"
inc_cmd[x] = "laminar/B738/toggle_switch/irs_source_right" 
dec_cmd[x] = "laminar/B738/toggle_switch/irs_source_left"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/fmc_source"
cmd[x][-1] = "lua/nav/FMC_BOTHL"
cmd[x][0] = "lua/nav/FMC_NORM"
cmd[x][1] = "lua/nav/FMC_BOTHR"
inc_cmd[x] = "laminar/B738/toggle_switch/fmc_source_right" 
dec_cmd[x] = "laminar/B738/toggle_switch/fmc_source_left"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/dspl_source"
cmd[x][-1] = "lua/dspl/SRC_ALL1"
cmd[x][0] = "lua/dspl/SRC_AUTO"
cmd[x][1] = "lua/dspl/SRC_ALL2"
inc_cmd[x] = "laminar/B738/toggle_switch/dspl_source_right" 
dec_cmd[x] = "laminar/B738/toggle_switch/dspl_source_left"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/dspl_ctrl_pnl"
cmd[x][-1] = "lua/dspl/CTRL_BOTH1"
cmd[x][0] = "lua/dspl/CTRL_NORM"
cmd[x][1] = "lua/dspl/CTRL_BOTH2"
inc_cmd[x] = "laminar/B738/toggle_switch/dspl_ctrl_pnl_right" 
dec_cmd[x] = "laminar/B738/toggle_switch/dspl_ctrl_pnl_left"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/cab_util_pos"
cmd[x][0] = "lua/elec/cab_util_off"
cmd[x][1] = "lua/elec/cab_util_on"
inc_cmd[x] = "laminar/B738/autopilot/cab_util_toggle" 
dec_cmd[x] = "laminar/B738/autopilot/cab_util_toggle"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/ife_pass_seat_pos"
cmd[x][0] = "lua/elec/ife_off"
cmd[x][1] = "lua/elec/ife_on"
inc_cmd[x] = "laminar/B738/autopilot/ife_pass_seat_toggle" 
dec_cmd[x] = "laminar/B738/autopilot/ife_pass_seat_toggle"

x = x + 1
sw_dref[x] = "laminar/B738/ice/window_heat_l_side_pos"
cmd[x][0] = "lua/ice/window_heat_l_side_off"
cmd[x][1] = "lua/ice/window_heat_l_side_on"
inc_cmd[x] = "laminar/B738/toggle_switch/window_heat_l_side" 
dec_cmd[x] = "laminar/B738/toggle_switch/window_heat_l_side"

x = x + 1
sw_dref[x] = "laminar/B738/ice/window_heat_l_fwd_pos"
cmd[x][0] = "lua/ice/window_heat_l_fwd_off"
cmd[x][1] = "lua/ice/window_heat_l_fwd_on"
inc_cmd[x] = "laminar/B738/toggle_switch/window_heat_l_fwd" 
dec_cmd[x] = "laminar/B738/toggle_switch/window_heat_l_fwd"

x = x + 1
sw_dref[x] = "laminar/B738/ice/window_heat_r_side_pos"
cmd[x][0] = "lua/ice/window_heat_r_side_off"
cmd[x][1] = "lua/ice/window_heat_r_side_on"
inc_cmd[x] = "laminar/B738/toggle_switch/window_heat_r_side" 
dec_cmd[x] = "laminar/B738/toggle_switch/window_heat_r_side"

x = x + 1
sw_dref[x] = "laminar/B738/ice/window_heat_r_fwd_pos"
cmd[x][0] = "lua/ice/window_heat_r_fwd_off"
cmd[x][1] = "lua/ice/window_heat_r_fwd_on"
inc_cmd[x] = "laminar/B738/toggle_switch/window_heat_r_fwd" 
dec_cmd[x] = "laminar/B738/toggle_switch/window_heat_r_fwd"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/capt_probes_pos"
cmd[x][0] = "lua/ice/capt_probes_off"
cmd[x][1] = "lua/ice/capt_probes_on"
inc_cmd[x] = "laminar/B738/toggle_switch/capt_probes_pos" 
dec_cmd[x] = "laminar/B738/toggle_switch/capt_probes_pos"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/fo_probes_pos"
cmd[x][0] = "lua/ice/fo_probes_off"
cmd[x][1] = "lua/ice/fo_probes_on"
inc_cmd[x] = "laminar/B738/toggle_switch/fo_probes_pos" 
dec_cmd[x] = "laminar/B738/toggle_switch/fo_probes_pos"

x = x + 1
sw_dref[x] = "laminar/B738/air/trim_air_pos"
cmd[x][0] = "lua/air/trim_air_off"
cmd[x][1] = "lua/air/trim_air_on"
inc_cmd[x] = "laminar/B738/toggle_switch/trim_air" 
dec_cmd[x] = "laminar/B738/toggle_switch/trim_air"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/air_temp_source"
cmd[x][0] = "lua/air/air_temp_source_0"
cmd[x][1] = "lua/air/air_temp_source_1"
cmd[x][2] = "lua/air/air_temp_source_2"
cmd[x][3] = "lua/air/air_temp_source_3"
cmd[x][4] = "lua/air/air_temp_source_4"
cmd[x][5] = "lua/air/air_temp_source_5"
cmd[x][6] = "lua/air/air_temp_source_6"
inc_cmd[x] = "laminar/B738/toggle_switch/air_temp_source_right" 
dec_cmd[x] = "laminar/B738/toggle_switch/air_temp_source_left"

x = x + 1
sw_dref[x] = "laminar/B738/air/l_recirc_fan_pos"
cmd[x][0] = "lua/air/l_recirc_fan_off"
cmd[x][1] = "lua/air/l_recirc_fan_on"
inc_cmd[x] = "laminar/B738/toggle_switch/l_recirc_fan" 
dec_cmd[x] = "laminar/B738/toggle_switch/l_recirc_fan"

x = x + 1
sw_dref[x] = "laminar/B738/air/r_recirc_fan_pos"
cmd[x][0] = "lua/air/r_recirc_fan_off"
cmd[x][1] = "lua/air/r_recirc_fan_on"
inc_cmd[x] = "laminar/B738/toggle_switch/r_recirc_fan" 
dec_cmd[x] = "laminar/B738/toggle_switch/r_recirc_fan"

x = x + 1
sw_dref[x] = "laminar/B738/air/l_pack_pos"
cmd[x][0] = "lua/air/l_pack_off"
cmd[x][1] = "lua/air/l_pack_auto"
cmd[x][2] = "lua/air/l_pack_high"
inc_cmd[x] = "laminar/B738/toggle_switch/l_pack_dn" 
dec_cmd[x] = "laminar/B738/toggle_switch/l_pack_up"

x = x + 1
sw_dref[x] = "laminar/B738/air/r_pack_pos"
cmd[x][0] = "lua/air/r_pack_off"
cmd[x][1] = "lua/air/r_pack_auto"
cmd[x][2] = "lua/air/r_pack_high"
inc_cmd[x] = "laminar/B738/toggle_switch/r_pack_dn" 
dec_cmd[x] = "laminar/B738/toggle_switch/r_pack_up"

x = x + 1
sw_dref[x] = "laminar/B738/air/isolation_valve_pos"
cmd[x][0] = "lua/air/isolation_valve_close"
cmd[x][1] = "lua/air/isolation_valve_auto"
cmd[x][2] = "lua/air/isolation_valve_open"
inc_cmd[x] = "laminar/B738/toggle_switch/iso_valve_dn" 
dec_cmd[x] = "laminar/B738/toggle_switch/iso_valve_up"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/bleed_air_1_pos"
cmd[x][0] = "lua/air/bleed_1_off"
cmd[x][1] = "lua/air/bleed_1_on"
inc_cmd[x] = "laminar/B738/toggle_switch/bleed_air_1" 
dec_cmd[x] = "laminar/B738/toggle_switch/bleed_air_1"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/bleed_air_2_pos"
cmd[x][0] = "lua/air/bleed_2_off"
cmd[x][1] = "lua/air/bleed_2_on"
inc_cmd[x] = "laminar/B738/toggle_switch/bleed_air_2" 
dec_cmd[x] = "laminar/B738/toggle_switch/bleed_air_2"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/bleed_air_apu_pos"
cmd[x][0] = "lua/air/bleed_apu_off"
cmd[x][1] = "lua/air/bleed_apu_on"
inc_cmd[x] = "laminar/B738/toggle_switch/bleed_air_apu" 
dec_cmd[x] = "laminar/B738/toggle_switch/bleed_air_apu"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/air_valve_ctrl"
cmd[x][0] = "lua/air/valve_ctrl_auto"
cmd[x][1] = "lua/air/valve_ctrl_altn"
cmd[x][2] = "lua/air/valve_ctrl_man"
inc_cmd[x] = "laminar/B738/toggle_switch/air_valve_ctrl_right" 
dec_cmd[x] = "laminar/B738/toggle_switch/air_valve_ctrl_left"

x = x + 1
sw_dref[x] = "laminar/B738/switches/left_wiper_pos"
cmd[x][0] = "lua/misc/wiper_l_0"
cmd[x][1] = "lua/misc/wiper_l_1"
cmd[x][2] = "lua/misc/wiper_l_2"
cmd[x][3] = "lua/misc/wiper_l_3"
inc_cmd[x] = "laminar/B738/knob/left_wiper_up" 
dec_cmd[x] = "laminar/B738/knob/left_wiper_dn"

x = x + 1
sw_dref[x] = "laminar/B738/switches/right_wiper_pos"
cmd[x][0] = "lua/misc/wiper_r_0"
cmd[x][1] = "lua/misc/wiper_r_1"
cmd[x][2] = "lua/misc/wiper_r_2"
cmd[x][3] = "lua/misc/wiper_r_3"
inc_cmd[x] = "laminar/B738/knob/right_wiper_up" 
dec_cmd[x] = "laminar/B738/knob/right_wiper_dn"

x = x + 1
sw_dref[x] = "laminar/B738/spring_toggle_switch/APU_start_pos"
cmd[x][0] = "lua/apu/master_off"
cmd[x][1] = "lua/apu/master_on"
cmd[x][2] = "lua/apu/master_start"
inc_cmd[x] = "laminar/B738/spring_toggle_switch/APU_start_pos_dn" 
dec_cmd[x] = "laminar/B738/spring_toggle_switch/APU_start_pos_up"

x = x + 1
sw_dref[x] = "laminar/B738/fuel/fuel_tank_pos_ctr1"
cmd[x][0] = "lua/fuel/ctr1_off"
cmd[x][1] = "lua/fuel/ctr1_on"
inc_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_ctr1" 
dec_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_ctr1"

x = x + 1
sw_dref[x] = "laminar/B738/fuel/fuel_tank_pos_ctr2"
cmd[x][0] = "lua/fuel/ctr2_off"
cmd[x][1] = "lua/fuel/ctr2_on"
inc_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_ctr2" 
dec_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_ctr2"

x = x + 1
sw_dref[x] = "laminar/B738/fuel/fuel_tank_pos_lft1"
cmd[x][0] = "lua/fuel/lft1_off"
cmd[x][1] = "lua/fuel/lft1_on"
inc_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_lft1" 
dec_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_lft1"

x = x + 1
sw_dref[x] = "laminar/B738/fuel/fuel_tank_pos_lft2"
cmd[x][0] = "lua/fuel/lft2_off"
cmd[x][1] = "lua/fuel/lft2_on"
inc_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_lft2" 
dec_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_lft2"

x = x + 1
sw_dref[x] = "laminar/B738/fuel/fuel_tank_pos_rgt1"
cmd[x][0] = "lua/fuel/rgt1_off"
cmd[x][1] = "lua/fuel/rgt1_on"
inc_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_rgt1" 
dec_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_rgt1"

x = x + 1
sw_dref[x] = "laminar/B738/fuel/fuel_tank_pos_rgt2"
cmd[x][0] = "lua/fuel/rgt2_off"
cmd[x][1] = "lua/fuel/rgt2_on"
inc_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_rgt2" 
dec_cmd[x] = "laminar/B738/toggle_switch/fuel_pump_rgt2"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/no_smoking_pos"
cmd[x][0] = "lua/misc/no_smoking_off"
cmd[x][1] = "lua/misc/no_smoking_auto"
cmd[x][2] = "lua/misc/no_smoking_on"
inc_cmd[x] = "laminar/B738/toggle_switch/no_smoking_dn" 
dec_cmd[x] = "laminar/B738/toggle_switch/no_smoking_up"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/seatbelt_sign_pos"
cmd[x][0] = "lua/misc/seatbelts_off"
cmd[x][1] = "lua/misc/seatbelts_auto"
cmd[x][2] = "lua/misc/seatbelts_on"
inc_cmd[x] = "laminar/B738/toggle_switch/seatbelt_sign_dn" 
dec_cmd[x] = "laminar/B738/toggle_switch/seatbelt_sign_up"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/emer_exit_lights"
cmd[x][0] = "lua/misc/emerg_exit_off"
cmd[x][1] = "lua/misc/emerg_exit_armed"
cmd[x][2] = "lua/misc/emerg_exit_on"
inc_cmd[x] = "laminar/B738/toggle_switch/emer_exit_lights_dn" 
dec_cmd[x] = "laminar/B738/toggle_switch/emer_exit_lights_up"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/eq_cool_exhaust"
cmd[x][0] = "lua/misc/eq_cool_ex_off"
cmd[x][1] = "lua/misc/eq_cool_ex_on"
inc_cmd[x] = "laminar/B738/toggle_switch/eq_cool_exhaust" 
dec_cmd[x] = "laminar/B738/toggle_switch/eq_cool_exhaust"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/eq_cool_supply"
cmd[x][0] = "lua/misc/eq_cool_sup_off"
cmd[x][1] = "lua/misc/eq_cool_sup_on"
inc_cmd[x] = "laminar/B738/toggle_switch/eq_cool_supply" 
dec_cmd[x] = "laminar/B738/toggle_switch/eq_cool_supply"

x = x + 1
sw_dref[x] = "laminar/B738/autobrake/autobrake_pos"
cmd[x][0] = "lua/autobrake/set_rto"
cmd[x][1] = "lua/autobrake/set_off"
cmd[x][2] = "lua/autobrake/set_1"
cmd[x][3] = "lua/autobrake/set_2"
cmd[x][4] = "lua/autobrake/set_3"
cmd[x][5] = "lua/autobrake/set_max"
inc_cmd[x] = "laminar/B738/knob/autobrake_up" 
dec_cmd[x] = "laminar/B738/knob/autobrake_dn"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/bright_test"
cmd[x][-1] = "lua/misc/light_dim"
cmd[x][0] = "lua/misc/light_norm"
cmd[x][1] = "lua/misc/light_test"
inc_cmd[x] = "laminar/B738/toggle_switch/bright_test_up" 
dec_cmd[x] = "laminar/B738/toggle_switch/bright_test_dn"

x = x + 1
sw_dref[x] = "laminar/B738/knob/transponder_pos"
cmd[x][0] = "lua/atc/transponder_test"
cmd[x][1] = "lua/atc/transponder_stdby"
cmd[x][2] = "lua/atc/transponder_altoff"
cmd[x][3] = "lua/atc/transponder_alt"
cmd[x][4] = "lua/atc/transponder_ta"
cmd[x][5] = "lua/atc/transponder_tara"
inc_cmd[x] = "laminar/B738/knob/transponder_mode_up" 
dec_cmd[x] = "laminar/B738/knob/transponder_mode_dn"

x = x + 1
sw_dref[x] = "laminar/B738/ice/wing_heat_pos"
cmd[x][0] = "lua/ice/wing_off"
cmd[x][1] = "lua/ice/wing_on"
inc_cmd[x] = "laminar/B738/toggle_switch/wing_heat" 
dec_cmd[x] = "laminar/B738/toggle_switch/wing_heat"

x = x + 1
sw_dref[x] = "laminar/B738/ice/eng1_heat_pos"
cmd[x][0] = "lua/ice/eng1_off"
cmd[x][1] = "lua/ice/eng1_on"
inc_cmd[x] = "laminar/B738/toggle_switch/eng1_heat" 
dec_cmd[x] = "laminar/B738/toggle_switch/eng1_heat"

x = x + 1
sw_dref[x] = "laminar/B738/ice/eng2_heat_pos"
cmd[x][0] = "lua/ice/eng2_off"
cmd[x][1] = "lua/ice/eng2_on"
inc_cmd[x] = "laminar/B738/toggle_switch/eng2_heat" 
dec_cmd[x] = "laminar/B738/toggle_switch/eng2_heat"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/hydro_pumps1_pos"
cmd[x][0] = "lua/hyd/eng1_off"
cmd[x][1] = "lua/hyd/eng1_on"
inc_cmd[x] = "laminar/B738/toggle_switch/hydro_pumps1" 
dec_cmd[x] = "laminar/B738/toggle_switch/hydro_pumps1"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/hydro_pumps2_pos"
cmd[x][0] = "lua/hyd/eng2_off"
cmd[x][1] = "lua/hyd/eng2_on"
inc_cmd[x] = "laminar/B738/toggle_switch/hydro_pumps2" 
dec_cmd[x] = "laminar/B738/toggle_switch/hydro_pumps2"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/electric_hydro_pumps1_pos"
cmd[x][0] = "lua/hyd/elec1_off"
cmd[x][1] = "lua/hyd/elec1_on"
inc_cmd[x] = "laminar/B738/toggle_switch/electric_hydro_pumps1" 
dec_cmd[x] = "laminar/B738/toggle_switch/electric_hydro_pumps1"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/electric_hydro_pumps2_pos"
cmd[x][0] = "lua/hyd/elec2_off"
cmd[x][1] = "lua/hyd/elec2_on"
inc_cmd[x] = "laminar/B738/toggle_switch/electric_hydro_pumps2" 
dec_cmd[x] = "laminar/B738/toggle_switch/electric_hydro_pumps2"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/eng_start_source"
cmd[x][-1] = "lua/eng/start_source_L"
cmd[x][0] = "lua/eng/start_source_B"
cmd[x][1] = "lua/eng/start_source_R"
inc_cmd[x] = "laminar/B738/toggle_switch/eng_start_source_right" 
dec_cmd[x] = "laminar/B738/toggle_switch/eng_start_source_left"

x = x + 1
sw_dref[x] = "laminar/B738/switch/land_lights_ret_left_pos"
cmd[x][0] = "lua/lights/land_ret_L_in"
cmd[x][1] = "lua/lights/land_ret_L_out"
cmd[x][2] = "lua/lights/land_ret_L_on"
inc_cmd[x] = "laminar/B738/switch/land_lights_ret_left_dn" 
dec_cmd[x] = "laminar/B738/switch/land_lights_ret_left_up"

x = x + 1
sw_dref[x] = "laminar/B738/switch/land_lights_ret_right_pos"
cmd[x][0] = "lua/lights/land_ret_R_in"
cmd[x][1] = "lua/lights/land_ret_R_out"
cmd[x][2] = "lua/lights/land_ret_R_on"
inc_cmd[x] = "laminar/B738/switch/land_lights_ret_right_dn" 
dec_cmd[x] = "laminar/B738/switch/land_lights_ret_right_up"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/taxi_light_brightness_pos"
cmd[x][0] = "lua/lights/taxi_off"
cmd[x][2] = "lua/lights/taxi_on"
inc_cmd[x] = "laminar/B738/toggle_switch/taxi_light_brightness_pos_dn" 
dec_cmd[x] = "laminar/B738/toggle_switch/taxi_light_brightness_pos_up"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/position_light_pos"
cmd[x][1] = "lua/lights/pos_strobe"
cmd[x][0] = "lua/lights/pos_off"
cmd[x][-1] = "lua/lights/pos_steady"
inc_cmd[x] = "laminar/B738/toggle_switch/position_light_up" 
dec_cmd[x] = "laminar/B738/toggle_switch/position_light_down"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/yaw_dumper_pos"
cmd[x][0] = "lua/control/yaw_off"
cmd[x][1] = "lua/control/yaw_on"
inc_cmd[x] = "laminar/B738/toggle_switch/yaw_dumper" 
dec_cmd[x] = "laminar/B738/toggle_switch/yaw_dumper"

x = x + 1
sw_dref[x] = "laminar/B738/switches/spoiler_A_pos"
cmd[x][0] = "lua/control/spoiler_A_on"
cmd[x][1] = "lua/control/spoiler_A_off"
inc_cmd[x] = "laminar/B738/toggle_switch/spoiler_A" 
dec_cmd[x] = "laminar/B738/toggle_switch/spoiler_A"

x = x + 1
sw_dref[x] = "laminar/B738/switches/spoiler_B_pos"
cmd[x][0] = "lua/control/spoiler_B_on"
cmd[x][1] = "lua/control/spoiler_B_off"
inc_cmd[x] = "laminar/B738/toggle_switch/spoiler_B" 
dec_cmd[x] = "laminar/B738/toggle_switch/spoiler_B"

x = x + 1
sw_dref[x] = "laminar/B738/switches/flt_ctr_A_pos"
cmd[x][-1] = "lua/control/flt_A_stby"
cmd[x][0] = "lua/control/flt_A_off"
cmd[x][1] = "lua/control/flt_A_on"
inc_cmd[x] = "laminar/B738/toggle_switch/flt_ctr_A_dn" 
dec_cmd[x] = "laminar/B738/toggle_switch/flt_ctr_A_up"

x = x + 1
sw_dref[x] = "laminar/B738/switches/flt_ctr_B_pos"
cmd[x][-1] = "lua/control/flt_B_stby"
cmd[x][0] = "lua/control/flt_B_off"
cmd[x][1] = "lua/control/flt_B_on"
inc_cmd[x] = "laminar/B738/toggle_switch/flt_ctr_B_dn" 
dec_cmd[x] = "laminar/B738/toggle_switch/flt_ctr_B_up"

x = x + 1
sw_dref[x] = "laminar/B738/switches/alt_flaps_pos"
cmd[x][0] = "lua/control/alt_flaps_off"
cmd[x][1] = "lua/control/alt_flaps_on"
inc_cmd[x] = "laminar/B738/toggle_switch/alt_flaps" 
dec_cmd[x] = "laminar/B738/toggle_switch/alt_flaps"

x = x + 1
sw_dref[x] = "laminar/B738/toggle_switch/alt_flaps_ctrl"
cmd[x][-1] = "lua/control/alt_flaps_ctrl_up"
cmd[x][0] = "lua/control/alt_flaps_ctrl_off"
cmd[x][1] = "lua/control/alt_flaps_ctrl_down"
inc_cmd[x] = "laminar/B738/toggle_switch/alt_flaps_ctrl_dn" 
dec_cmd[x] = "laminar/B738/toggle_switch/alt_flaps_ctrl_up"

x = x + 1
sw_dref[x] = "laminar/B738/fire/apu/ext_switch/pos_arm"
cmd[x][0] = "lua/control/apu_fire_sw_in"
cmd[x][1] = "lua/control/apu_fire_sw_pull"
inc_cmd[x] = "laminar/B738/fire/apu/ext_switch_arm" 
dec_cmd[x] = "laminar/B738/fire/apu/ext_switch_arm"

x = x + 1
sw_dref[x] = "laminar/B738/fire/apu/ext_switch/pos_disch"
cmd[x][-1] = "lua/control/apu_fire_sw_L"
cmd[x][0] = "lua/control/apu_fire_sw_C"
cmd[x][1] = "lua/control/apu_fire_sw_R"
inc_cmd[x] = "laminar/B738/fire/apu/ext_switch_R"
dec_cmd[x] = "laminar/B738/fire/apu/ext_switch_L"

x = x + 1
sw_dref[x] = "laminar/B738/fire/engine01/ext_switch/pos_arm"
cmd[x][0] = "lua/control/eng1_fire_sw_in"
cmd[x][1] = "lua/control/eng1_fire_sw_pull"
inc_cmd[x] = "laminar/B738/fire/engine01/ext_switch_arm" 
dec_cmd[x] = "laminar/B738/fire/engine01/ext_switch_arm"

x = x + 1
sw_dref[x] = "laminar/B738/fire/engine01/ext_switch/pos_disch"
cmd[x][-1] = "lua/control/eng1_fire_sw_L"
cmd[x][0] = "lua/control/eng1_fire_sw_C"
cmd[x][1] = "lua/control/eng1_fire_sw_R"
inc_cmd[x] = "laminar/B738/fire/engine01/ext_switch_R"
dec_cmd[x] = "laminar/B738/fire/engine01/ext_switch_L"

x = x + 1
sw_dref[x] = "laminar/B738/fire/engine02/ext_switch/pos_arm"
cmd[x][0] = "lua/control/eng2_fire_sw_in"
cmd[x][1] = "lua/control/eng2_fire_sw_pull"
inc_cmd[x] = "laminar/B738/fire/engine02/ext_switch_arm" 
dec_cmd[x] = "laminar/B738/fire/engine02/ext_switch_arm"

x = x + 1
sw_dref[x] = "laminar/B738/fire/engine02/ext_switch/pos_disch"
cmd[x][-1] = "lua/control/eng2_fire_sw_L"
cmd[x][0] = "lua/control/eng2_fire_sw_C"
cmd[x][1] = "lua/control/eng2_fire_sw_R"
inc_cmd[x] = "laminar/B738/fire/engine02/ext_switch_R"
dec_cmd[x] = "laminar/B738/fire/engine02/ext_switch_L"


--[[
x = x + 1
sw_dref[x] = ""
cmd[x][0] = ""
cmd[x][1] = ""
inc_cmd[x] = "" 
dec_cmd[x] = ""
]]--

-- DO NOT EDIT BELOW THIS LINE ----------------------------------------------------------

for k  = 0, limit do
		if sw_dref[k] ~= nil then
			if sw_dref[k] ~= nil then				
				dataref(dref_val[k], sw_dref[k], "readonly")
			end
		for i = -10, 10 do
			if cmd[k][i] ~= nil then 
				func = "setSwitch(" .. i .. "," .. k .. ")"	
				create_command(cmd[k][i],"Custom LUA command",func,"","")					
				if logging ~= k then logMsg("CMD Added: " .. cmd[k][i] .. " -> " .. func) end			
			end
		end
	end
end


function setSwitch(tgt_pos, z)
		for k = 0, limit do
			
			if 	dref_val[z] == "curr_pos_" .. k then curr_pos = _G["curr_pos_" .. k] end
		end		
        if logging ~= 0 then logMsg(sw_dref[z] .. " -> " .. tgt_pos) end
		if tgt_pos < curr_pos then
		i = curr_pos - tgt_pos
			for j = 1, i, 1 do
			if logging ~= 0 then logMsg("CMD: " .. dec_cmd[z] .. " ; before: " .. curr_pos) end
			command_once(dec_cmd[z])
			end
		end
		if tgt_pos > curr_pos then
		i = tgt_pos - curr_pos
			for j = 1, i, 1 do
			if logging ~= 0 then logMsg("CMD: " .. inc_cmd[z] .. " ; before: " .. curr_pos) end
			command_once(inc_cmd[z])
			end
		end
end