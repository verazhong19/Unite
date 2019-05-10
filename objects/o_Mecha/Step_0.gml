/// @description Insert description here
// You can write your code in this editor


//assign input
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyTrans = keyboard_check(ord("X"));

//assign one step variable
var move = keyRight - keyLeft;
hsp = move * walkSpeed;
vsp = vsp + grv;

//jump
if(place_meeting(x, y+1,o_Wall))&&(keyUp == true){
	vsp = -4;
}

if(place_meeting(x, y+1,o_BlueSwitch))&&(keyUp == true){
	vsp = -9;
}

//transform
if keyTrans{
	instance_change(o_Player, true);
}

//restart on death
if (global.hpMecha == 0){
	instance_destroy();
	room_restart();
}

//horizontal collision
if(place_meeting(x+hsp, y, o_Wall)){
	hsp = 0;	
}

if(place_meeting(x+hsp, y, o_BlueSwitch)){
	while(!place_meeting(x+sign(hsp),y,o_BlueSwitch)){
		x = x+sign(hsp);
	}
	hsp = 0;	
}
//vertical collision
//vertical collision
if(place_meeting(x, y+vsp, o_Wall)){
	while(!place_meeting(x,y+sign(vsp),o_Wall)){
		y = y+sign(vsp);
	}
	vsp = 0;	
}

if(place_meeting(x, y+vsp, o_BlueSwitch)){
	while(!place_meeting(x,y+sign(vsp),o_BlueSwitch)){
		y = y+sign(vsp);
	}
	vsp = 0;	
}

//set x coordinate
x = x+hsp;

//set y based on gravity
y = y+vsp;

//animation
if(!place_meeting(x,y+1,o_Wall)){
	sprite_index=s_Mecha;
	image_speed = 0;
	
	if(sign(vsp)>0) image_index = 0; else image_index = 1;
} else {
	image_speed = 1;
	
	if(hsp == 0){
		sprite_index = s_Mecha;
		image_speed = 0;
		image_index = 0;
	} else {
		sprite_index= s_Mecha;
	}
}

if ( hsp !=0) image_xscale = sign(hsp);

hitDelay--;/**/
