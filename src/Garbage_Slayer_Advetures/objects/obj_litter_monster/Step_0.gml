/// @description Insert description here
// You can write your code in this editor

// Creating litter
// GameMaker 1 5-B (Reference)
if (check1 == true and check2 == true) and instance_exists(obj_player) {
	// Spawning litter
	instance_create_layer(x, y, "Instances", obj_litter)
	check2 = false

// Cooldown
} else if check1 == true and check2 == false {
	check1 = false
	check2 = true
	
	time = irandom_range(12, 16)
	alarm[0] = room_speed * time
}
