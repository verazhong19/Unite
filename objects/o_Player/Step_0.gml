/// @description Insert description here
// You can write your code in this editor

//assign input
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyTrans = keyboard_check(ord("Z"));

//assign one step variable
var move = keyRight - keyLeft;
hsp = move * walkSpeed;
vsp = vsp + grv;

//friction
if abs(speed) > 0 {
   friction=0.05;
  } else {
   friction=0;
  }

//jump
if(place_meeting(x, y+1,o_Wall))&&(keyUp == true){
	vsp = -9;
}

if(place_meeting(x, y+1,o_Switch))&&(keyUp == true){
	vsp = -9;
}
//horizontal collision
if(place_meeting(x+hsp, y, o_Wall)){
	while(!place_meeting(x+sign(hsp),y,o_Wall)){
		x = x+sign(hsp);
	}
	hsp = 0;	
}

if(place_meeting(x+hsp, y, o_Switch)){
	while(!place_meeting(x+sign(hsp),y,o_Switch)){
		x = x+sign(hsp);
	}
	hsp = 0;	
}
//vertical collision
if(place_meeting(x, y+vsp, o_Wall)){
	while(!place_meeting(x,y+sign(vsp),o_Wall)){
		y = y+sign(vsp);
	}
	vsp = 0;	
}

if(place_meeting(x, y+vsp, o_Switch)){
	while(!place_meeting(x,y+sign(vsp),o_Switch)){
		y = y+sign(vsp);
	}
	vsp = 0;	
}

//transform
if (place_meeting(x, y+1,o_Wall))&&(keyTrans == true){
	vsp = -6;
	alarm_set(0, 6);
		
}

if (place_meeting(x, y+1,o_Switch))&&(keyTrans == true){
	vsp = -6;
	alarm_set(0, 6);
		
}
//set x coordinate
x = x+hsp;

//set y based on gravity
y = y+vsp;

//restart game upon death
if(global.hpCorgi == 0){
	game_restart();
}

//animation
if(!place_meeting(x,y+1,o_Wall)){
	image_index=0;
	
	if(sign(vsp)>0) image_index = 0; else image_index = 0;
} else {
	image_speed = 1;
	
	if(hsp == 0){
		sprite_index = s_PlayerIdle;
	} else {
		sprite_index= s_Player;
	}
}

if ( hsp !=0) image_xscale = sign(hsp);