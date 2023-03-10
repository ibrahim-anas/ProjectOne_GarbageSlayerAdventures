/// @description Insert description here
// You can write your code in this editor

// Counting number of litter in-game and calculating damage to player
if instance_number(obj_litter) > litter_quantity and litter_dmg_cooldown == false {
	litter_dmg_cooldown = true
	alarm[0] = room_speed * 2
}

// Code for the green filter is in obj_filter
if (keyboard_check(ord("Z"))) {
    //go to win screen
}

