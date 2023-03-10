/// @description Insert description here
// You can write your code in this editor

// Water Gun duration is controlled by obj_player

image_angle = point_direction(x, y, mouse_x, mouse_y)

// Creating distance from water gun to player
displacement = 12
handle_to_barrel_ang = 66

// Moving water gun around player
// Variables barrel_x and barrel_y are used in obj_player to calculate bullet source point
	// Top Right
	if image_angle >= 0 and image_angle <= 90 {
		x += dcos(image_angle) * displacement
		y -= dsin(image_angle) * displacement
		
		barrel_x = obj_water_gun.x + lengthdir_x(10, image_angle + handle_to_barrel_ang)
		barrel_y = obj_water_gun.y + lengthdir_y(10, image_angle + handle_to_barrel_ang)
	}

	// Top Left
	if image_angle > 90 and image_angle <= 180 {
		x += dcos(image_angle) * displacement
		y -= dsin(image_angle) * displacement
		
		// Mirroring sprite
		image_yscale = image_yscale * -1
		
		barrel_x = obj_water_gun.x - lengthdir_x(10, image_angle + handle_to_barrel_ang)
		barrel_y = obj_water_gun.y - lengthdir_y(10, image_angle + handle_to_barrel_ang)
	}

	// Bottom Left
	if image_angle > 180 and image_angle <= 270 {
		x += dcos(image_angle) * displacement
		y -= dsin(image_angle) * displacement
		
		// Mirroring sprite
		image_yscale = image_yscale * -1
		
		barrel_x = obj_water_gun.x - lengthdir_x(10, image_angle + handle_to_barrel_ang)
		barrel_y = obj_water_gun.y - lengthdir_y(10, image_angle + handle_to_barrel_ang)
	}

	// Bottom Right
	if image_angle > 270 and image_angle <= 360 {
		x += dcos(image_angle) * displacement
		y -= dsin(image_angle) * displacement
		
		barrel_x = obj_water_gun.x + lengthdir_x(10, image_angle + handle_to_barrel_ang)
		barrel_y = obj_water_gun.y + lengthdir_y(10, image_angle + handle_to_barrel_ang)
	}

