/// @description Insert description here
// You can write your code in this editor

// Player movement
// Gamemaker Workshop 2, 1-A (Reference)
if (keyboard_check(ord("W")) and !instance_place(x, y - move_speed, obj_block)) {
    y -= move_speed
}

if (keyboard_check(ord("S")) and !instance_place(x, y + move_speed, obj_block)) {
    y += move_speed
}

if (keyboard_check(ord("A")) and !instance_place(x - move_speed, y, obj_block)) {
    x -= move_speed
}

if (keyboard_check(ord("D")) and !instance_place(x + move_speed, y, obj_block)) {
    x += move_speed
}

//cheat code for health to 100%
if (keyboard_check(ord("H")) and !instance_place(x + move_speed, y, obj_block)) {
    health = 200
}
//cheat code to increase the player speed
if (keyboard_check(ord("1")) and !instance_place(x + move_speed, y, obj_block)) {
    obj_player.move_speed += 1;
}

// Shooting watergun
// GameMaker Workshop 1, 5-B (Reference)
if watergun == true and canShoot == true and mouse_check_button(mb_left) {
	// Fire
	instance_create_layer(x, y, "Instances", obj_water_bullet)
	canShoot = false
	
	// Firerate
	alarm[0] = firerate	
	

}
if (keyboard_check(ord("F"))) {
		firerate = 10
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
	game_restart();
	points = 0;
}


// Bounding the Player to the Screen
// Gamemaker Workshop 1, 1-B (Reference)
x = clamp(x, sprite_width/2, room_width-sprite_width/2) 
y = clamp(y, sprite_height/2, room_height-sprite_height/2) 