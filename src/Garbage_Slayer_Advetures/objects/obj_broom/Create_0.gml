/// @description Insert description here
// You can write your code in this editor

// Initial broom (This is to prevent two sprites from appearing)
image_angle = point_direction(x, y, mouse_x, mouse_y)

// Creating distance from broom to player
displacement = 12

// Moving broom around player
	// Top Right
	if image_angle >= 0 and image_angle <= 90 {
		x += dcos(image_angle) * displacement
		y -= dsin(image_angle) * displacement
	}

	// Top Left
	if image_angle > 90 and image_angle <= 180 {
		x += dcos(image_angle) * displacement
		y -= dsin(image_angle) * displacement
	}

	// Bottom Left
	if image_angle > 180 and image_angle <= 270 {
		x += dcos(image_angle) * displacement
		y -= dsin(image_angle) * displacement
	}

	// Bottom Right
	if image_angle > 270 and image_angle <= 360 {
		x += dcos(image_angle) * displacement
		y -= dsin(image_angle) * displacement
	}


// Timer for Broom Duration
alarm[0] = 15
