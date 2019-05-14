/// @description Insert description here
// You can write your code in this editor
hsp = dir * movespeed;
vsp += grav;

if(place_meeting(x+hsp, y, o_Wall)){
	while(!place_meeting(x+sign(hsp),y,o_Wall)){
		x = x+sign(hsp);
	}
	hsp = 0;	
	dir *= -1;
} else if(place_meeting(x+hsp, y, o_BlueWall)){
	while(!place_meeting(x+sign(hsp),y,o_BlueWall)){
		x = x+sign(hsp);
	}
	hsp = 0;	
	dir *= -1;
} else if(place_meeting(x+hsp, y, o_PinkWall)){
	while(!place_meeting(x+sign(hsp),y,o_PinkWall)){
		x = x+sign(hsp);
	}
	hsp = 0;	
	dir *= -1;
	
} else if(place_meeting(x+hsp, y, o_BlueSwitch)){
	while(!place_meeting(x+sign(hsp),y,o_BlueSwitch)){
		x = x+sign(hsp);
	}
	hsp = 0;	
	dir *= -1;
	
} else if(place_meeting(x+hsp, y, o_RedSwitch)){
	while(!place_meeting(x+sign(hsp),y,o_RedSwitch)){
		x = x+sign(hsp);
	}
	hsp = 0;	
	dir *= -1;
	
} else if(place_meeting(x+hsp, y, o_PurpleSwitch)){
	while(!place_meeting(x+sign(hsp),y,o_PurpleSwitch)){
		x = x+sign(hsp);
	}
	hsp = 0;	
	dir *= -1;
	
} else if(place_meeting(x+hsp, y, o_Mecha)){
	x = x+sign(hsp);
	hsp = 0;	
	dir *= -1;
} 





x+=hsp;

if(place_meeting(x, y+vsp, o_Wall)){
	while(!place_meeting(x,y+sign(vsp),o_Wall)){
		y = y+sign(vsp);
	}
	vsp = 0;	
	if (fearOfHeights) && !position_meeting(x+(sprite_width/2)*dir, y+(sprite_height/2)+8, o_Wall){
	dir*=-1;
	}
}

y+=vsp

if (hp == 0){
	global.gameEnd = true;
	instance_destroy();
}


hitDelay--;/**/