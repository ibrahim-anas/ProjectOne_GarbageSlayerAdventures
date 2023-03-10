/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_highscores)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_color(c_yellow)

draw_highscore(600, 80, room_width - 600, room_height - 120)
draw_text_transformed_color(room_width/2, room_height - 100, "Press 'R' to go back to the main menu", .8, .8, 0, c_orange, c_orange, c_orange, c_orange, 1)

if keyboard_check(ord("R"))
	room_goto(rm_menu)