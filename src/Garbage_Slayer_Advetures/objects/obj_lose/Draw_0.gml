/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_credits)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed_color(room_width/2, room_height/2 - 20, "Game Over\nYou Lose", .5, .5, 0, c_orange, c_orange, c_orange, c_orange, 1)
draw_text_transformed_color(room_width/2, room_height/2 + 100, "Must be a skill Issue LOL", .3, .3, 0, c_orange, c_orange, c_orange, c_orange, 1)

draw_text_transformed_color(room_width/2, room_height - 72, "Press 'M' to see highscores", .12, .12, 0, c_orange, c_orange, c_orange, c_orange, 1)