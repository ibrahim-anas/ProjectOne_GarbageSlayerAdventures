/// @description Insert description here
// You can write your code in this editor


// Draw background for hud
draw_set_colour(c_gray)
draw_rectangle(7, 10, 240, 128, false)

// Font and alignment
draw_set_font(fnt_hud)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)

// Player health display
// Gamemaker Workshop 1, 4-C (Reference)
draw_set_colour(c_white)
draw_text(18, 44, "Health: ")
if instance_exists(obj_player) {
	draw_healthbar(84, 30, 225, 55, (health/200) * 100, c_black, c_red, c_lime, 0, true, true)
}

// Scoring
// Gamemaker Workshop 1, 5-C (Reference)
draw_text(18, 76, "Score: " + string(score))

// Litter counter
litter_number = instance_number(obj_litter)
draw_text(18, 108, "# of litter: " + string(litter_number))