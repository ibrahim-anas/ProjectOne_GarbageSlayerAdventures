/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_highscores)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_highscore(300, 150, 800, room_height - 200)
draw_text(500, 600, "Press 'R' to go back to the main menu")

if keyboard_check(ord("R"))
	room_goto(rm_menu)