	--[[
DomeLightOn by Axel Reinemuth

This FlyWithLua script will automatically switch on the Dome Light on the Zibo 737

How to use:
1. Install FlyWithLua ( https://forums.x-plane.org/index.php?/files/file/38445-flywithlua-ng-next-generation-edition-for-x-plane-11-win-lin-mac/ )
2. Place this Scipt in the folder "X-Plane 11\Resources\plugins\FlyWithLua\Scripts"
3. Done
]]--

function light_on()		
	command_once("laminar/B738/toggle_switch/cockpit_dome_dn")
	command_once("laminar/B738/toggle_switch/cockpit_dome_dn")
end

light_on()
do_sometimes("light_on()")