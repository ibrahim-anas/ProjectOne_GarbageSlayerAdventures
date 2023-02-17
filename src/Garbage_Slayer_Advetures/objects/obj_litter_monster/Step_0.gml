/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_player) {
	
	if (distance_to_object(obj_player) < attack_range) {
		direction = point_direction(x, y, obj_player.x, obj_player.y)
	}
	
	
	
} else {
	
	if (instance_place(x+hsp, y+hsp, obj_wall)) {
	    direction = dir[irandom(3)]
	}
}

alarm[0] = turn_rate
