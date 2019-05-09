/// @description Insert description here
// You can write your code in this editor
instance_deactivate_object(o_PinkWall);

with (o_RedSwitch.id)
{
	instance_destroy();
}

global.pinkWall = false;