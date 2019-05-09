/// @description Insert description here
// You can write your code in this editor
instance_deactivate_object(o_BlueWall);
with (o_BlueSwitch.id)
{
	instance_destroy();
}
global.blueWall = false;