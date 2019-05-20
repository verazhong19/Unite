/// @description Insert description here
// You can write your code in this editor
alarm_set(0, 15){
	if gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face2) || gamepad_button_check(0, gp_face3) || gamepad_button_check(0, gp_face4) || gamepad_button_check(0, gp_start) || gamepad_button_check(0, gp_select){
	room_goto(2);
}
}