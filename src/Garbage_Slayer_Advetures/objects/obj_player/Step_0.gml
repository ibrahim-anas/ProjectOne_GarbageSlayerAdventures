/// @description Insert description here
// You can write your code in this editor

// Player movement
if (keyboard_check(ord("W"))) {
    y -= move_speed
}

if (keyboard_check(ord("S"))) {
    y += move_speed
}

if (keyboard_check(ord("A"))) {
    x -= move_speed
}

if (keyboard_check(ord("D"))) {
    x += move_speed
}


// Shooting watergun
// GameMaker 1 5-B
if watergun == true and canShoot == true and mouse_check_button(mb_left) {
	// Fire
	instance_create_layer(x, y, "Instances", obj_water_bullet)
	canShoot = false
	
	// Firerate
	alarm[0] = room_speed	
}


// Using broom
if broom == true and mouse_check_button_pressed(mb_right) {
	// Swing
	instance_create_layer(x, y, "Instances", obj_broom)
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
	instance_destroy()
}


// Bounding the Player to the Screen
// Gamemaker Workshop 1, 1-B (Reference)
x = clamp(x, sprite_width/2, room_width-sprite_width/2) 
y = clamp(y, sprite_height/2, room_height-sprite_height/2) 