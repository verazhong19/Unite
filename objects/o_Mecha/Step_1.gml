/// @description Insert description here
// You can write your code in this editor

keyShoot=keyboard_check(ord("X")) || gamepad_button_check(0, gp_face2);

///event that creates the bullet
if can_fire && keyShoot
{
	var bullet = instance_create_layer(x, y + 20, "Bullets", o_Bullet);
    bullet.direction = point_direction(0, 0, image_xscale, 0) ;
	can_fire = false;
	alarm[0] = firing_delay;
}
