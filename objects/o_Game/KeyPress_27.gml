/// @description Insert description here
// You can write your code in this editor
if(!pause){
	pause = true;
	instance_deactivate_all(true);
} else {
	pause = false;
	instance_activate_all();
}

//window_set_fullscreen(!window_get_fullscreen());