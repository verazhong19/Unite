/// @description Insert description here
// You can write your code in this editor
if global.gameEnd && keyboard_check(vk_enter){
	game_restart();
}

if global.gameEnd && gamepad_button_check(0, gp_start){
	game_restart();
}