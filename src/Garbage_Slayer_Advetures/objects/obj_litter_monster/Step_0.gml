/// @description Insert description here
// You can write your code in this editor

// Creating litter
// GameMaker 1 5-B (Reference)
if (check1 == true and check2 == true) and (instance_exists(obj_player)) and (instance_number(obj_litter) < 20) {
	// Spawning litter
	instance_create_layer(x, y, "Instances", obj_litter)
	check2 = false

// Cooldown
} else if check1 == true and check2 == false {
	check1 = false
	check2 = true
	
	time = irandom_range(10, 14)
	alarm[0] = room_speed * time
}

// Litter Monster Turning
	// Turning Left
	if (direction >= 90 and direction < 270) and image_xscale < 0 {
		image_xscale = image_xscale * -1
	
	// Turning Right
	// The OR statement is here because there is a glitch with Gamemaker's "direction" variable
	// It cannot translate negative degrees to positive degrees without causing issues
	} else if ((direction >= 270 and direction < 450) 
	or (direction >= -90 and direction < 90)) and image_xscale >= 0 {
		image_xscale = image_xscale * -1
	}