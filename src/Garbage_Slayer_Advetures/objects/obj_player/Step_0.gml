/// @description Insert description here
// You can write your code in this editor


// No sprite animation while motionless
image_speed = 0

// Player movement
// Gamemaker Workshop 2, 1-A (Reference)
	// Up
	if (keyboard_check(ord("W")) and !instance_place(x, y - move_speed, obj_block)) {
	    y -= move_speed
		image_speed = 1
	
		// Broom movement
		if instance_exists(obj_broom) 
			obj_broom.y -= move_speed
			
		// Water gun movement
		if instance_exists(obj_water_gun) 
			obj_water_gun.y -= move_speed
	}

	// Down
	if (keyboard_check(ord("S")) and !instance_place(x, y + move_speed, obj_block)) {
	    y += move_speed
		image_speed = 1
	
		// Broom movement
		if instance_exists(obj_broom) 
			obj_broom.y += move_speed
		
		// Water gun movement
		if instance_exists(obj_water_gun) 
			obj_water_gun.y += move_speed
	}

	// Left
	if (keyboard_check(ord("A")) and !instance_place(x - move_speed, y, obj_block)) {
		x -= move_speed
		image_speed = 1
	
		// Broom movement
		if instance_exists(obj_broom) 
			obj_broom.x -= move_speed
			
		// Water gun movement
		if instance_exists(obj_water_gun) 
			obj_water_gun.x -= move_speed
	
		// Changing player sprite direction
		if image_xscale >= 0
			image_xscale = image_xscale * -1
	}

	// Right
	if (keyboard_check(ord("D")) and !instance_place(x + move_speed, y, obj_block)) {
	    x += move_speed
		image_speed = 1
	
		// Broom movement
		if instance_exists(obj_broom) 
			obj_broom.x += move_speed
			
		// Water gun movement
		if instance_exists(obj_water_gun) 
			obj_water_gun.x += move_speed
	
		// Changing player sprite direction
		if image_xscale < 0
			image_xscale = image_xscale * -1
	}


// Shooting watergun
// GameMaker Workshop 1, 5-B (Reference)
if canShoot == true and !instance_exists(obj_broom) and mouse_check_button(mb_left) {
	
	// Fire
	instance_create_layer(x, y, "Instances", obj_water_gun)
	instance_create_layer(obj_water_gun.barrel_x, obj_water_gun.barrel_y, "Instances", obj_water_bullet)
	canShoot = false
	
	// Firerate
	alarm[0] = room_speed	
}


// Using broom
if broom == true and !instance_exists(obj_water_gun) and mouse_check_button_pressed(mb_right) {
	// Swing
	instance_create_layer(x, y, "Instances", obj_broom)
	audio_play_sound(snd_sweep_trash, 1, false)
	broom = false
}

// If broom swing ends
if !instance_exists(obj_broom) and broom_cooldown == true {
	
	broom_cooldown = false
	
	// Cooldown on broom
	alarm[1] = 55
}


// Player death
if health <= 0 {
	audio_play_sound(snd_player_hurt, 1, false)
	instance_destroy()
}
