/// @description Insert description here
// You can write your code in this editor

// Player health display
// Gamemaker Workshop 1, 4-C (Reference)
if instance_exists(obj_player) {
	draw_healthbar(8, 8, 256, 32, health, c_black, c_red, c_lime, 0, true, true)
}

// Scoring
// Gamemaker Workshop 1, 5-C (Reference)
draw_text(16, 64, "Score: " + string(points))