/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player) {
	// Chasing the Player
	if (distance_to_object(obj_player) < attack_range) {
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		
	// Not chasing player
	} else {
		// Bouncing off walls
        // Check for collision to the right 
        if (instance_place(x + hspeed, y, obj_block)) {
			
            // Downwards
			if vspeed >= 0 {
				direction = direction - (2 * (direction - 270))
				
            // Upwards
            } else {
                direction = direction + (2 * (90 - direction))
            }
        }
		
		// Check for collision to the left 
		if (instance_place(x + hspeed, y, obj_block)) {

            // Downwards
            if vspeed >= 0 {
                direction = direction + (2 * (270 - direction))

            // Upwards
            } else {
                direction = direction - (2 * (direction - 90))
            }
        }
		
		// Check for collision above
		if (instance_place(x, y + vspeed, obj_block)) {

            // Rightwards
            if hspeed >= 0 {
                direction = direction * -1

            // Leftwards
            } else {
                direction = direction + (2 * (180 - direction))
            }
        }
		
		// Check for collision below
		if (instance_place(x, y + vspeed, obj_block)) {

            // Rightwards
            if hspeed >= 0 {
                direction = direction * -1

            // Leftwards
            } else {
                direction = direction - (2 * (direction - 180))
            }
        }
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