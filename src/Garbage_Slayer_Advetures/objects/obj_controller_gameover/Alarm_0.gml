if (room == mainRoom) {
	if !instance_exists(obj_litter) and !instance_exists(obj_litter_monster) and !instance_exists(obj_fire_monster)
		room_goto(rm_win)
}

alarm[0] = 120