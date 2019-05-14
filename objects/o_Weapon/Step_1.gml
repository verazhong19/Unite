/// @description Insert description here
// You can write your code in this editor
x = o_Mecha.x;
y = o_Mecha.y;
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyShoot = keyboard_check(ord("X")) || gamepad_button_check(0, gp_face2);

if keyRight{direction = 0;} else {direction = 180;}
image_angle = direction;

//shoot
if keyShoot{
	with(instance_create_layer(x,y,"BulletLayer",o_Bullet)){
		speed = 10;
		direction = other.image_angle;
	}
}