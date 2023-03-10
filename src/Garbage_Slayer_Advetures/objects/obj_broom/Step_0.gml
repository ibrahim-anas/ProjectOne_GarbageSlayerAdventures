/// @description Insert description here
// You can write your code in this editor

// Point towards cursor direction
image_angle = point_direction(x, y, mouse_x, mouse_y)

// Remove if player is dead
if !instance_exists(obj_player)
	instance_destroy()

// Code for Broom "following" the Player is in obj_player

