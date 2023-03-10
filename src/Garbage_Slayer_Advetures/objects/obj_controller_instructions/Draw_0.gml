/// @description Draw credits on screen upon entering rm_credits
draw_set_font(fnt_global)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed_color(room_width / 2, 180, "Controls", .5, .5, 0, c_orange, c_orange, c_orange, c_orange, 1)
draw_text_transformed_color(room_width / 2, 290, "W,A,S,D: Move\nLEFT CLICK: Shoot water gun (effective agianst Fire Monsters)\nRIGHT CLICK: Use broom (effective agianst Litter and Litter Monsters)", .35, .35, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)

draw_text_transformed_color(room_width / 2, 430, "Objective", .5, .5, 0, c_orange, c_orange, c_orange, c_orange, 1)
draw_text_transformed_color(room_width / 2, 520, "Survive the Horde!\nClean the city (too much litter and you lose health)", .35, .35, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)

draw_text_transformed_color(room_width / 2, room_height - 72, "Press 'R' to return to the Main Menu", .2, .2, 0, c_orange, c_orange, c_orange, c_orange, 1)