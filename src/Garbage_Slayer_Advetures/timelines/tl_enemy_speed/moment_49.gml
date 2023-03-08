// After 49 seconds, enemies speed up
if instance_exists(obj_fire_monster) {
	obj_fire_monster.speed += 0.05
}

if instance_exists(obj_litter_monster) {
	obj_litter_monster.path_speed += 0.05
}