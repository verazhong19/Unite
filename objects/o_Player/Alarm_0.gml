/// @description Insert description here
// You can write your code in this editor
instance_change(o_Mecha, true);
if (place_meeting(x, y, o_Wall)) {
	instance_change(o_Player, true);	
	//show_debug_message("not enough space");
	global.space = false;
	y -= vsp;
	vsp = 0;
	alarm_set(1, 45);
}
