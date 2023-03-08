/// @description Insert description here
// You can write your code in this editor
randomise()
if instance_exists(obj_player) {
	if (distance_to_object(obj_player) < attack_range) {
		direction = point_direction(x, y, obj_player.x, obj_player.y)
	}
	

} else {
	if (instance_place(x+speed, y+speed, obj_wall)) {
	    direction = dir[irandom(3)]
	}
}


// Fire Monster Turning
// Turning Left
if hspeed < 0 and image_xscale <= 0 {
	image_xscale = image_xscale * -1
	
// Turning Right
} else if hspeed >= 0 and image_xscale > 0 {
	image_xscale = image_xscale * -1
}

alarm[0] = turn_rate
