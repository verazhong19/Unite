/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(global.blueWall&global.pinkWall){
	instance_deactivate_object(o_BlueWall);
	instance_deactivate_object(o_PinkWall);
		global.blueWall = false;
	global.pinkWall = false;
	
	with (o_PurpleSwitch.id)
{
	instance_destroy();
}
} else if(!global.blueWall && global.pinkWall){
	instance_activate_object(o_BlueWall)
	instance_deactivate_object(o_PinkWall);
		global.blueWall = true;
	global.pinkWall = false;
	
	with (o_PurpleSwitch.id)
{
	instance_destroy();

}
} else if(!global.pinkWall && global.blueWall){
	instance_activate_object(o_PinkWall);
	instance_deactivate_object(o_BlueWall);
		global.pinkWall = true;
	global.blueWall = false;

	
	with (o_PurpleSwitch.id)
{
	instance_destroy();

}
} else{
	instance_activate_object(o_PinkWall);
	instance_activate_object(o_BlueWall);
		global.pinkWall = true;
	global.blueWall = true;

	
	with (o_PurpleSwitch.id)
{
	instance_destroy();

}
}

