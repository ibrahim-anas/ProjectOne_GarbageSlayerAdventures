/// @description Draw credits on screen upon entering rm_credits
draw_set_font(fnt_global)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed_color(room_width / 2, 180, "Controls", .5, .5, 0, c_aqua, c_aqua, c_green, c_green, 1)
draw_text_transformed_color(room_width / 2, 290, "W,A,S,D: Move\nLEFT CLICK: Shoot water gun (effective agianst Fire Monsters)\nRIGHT CLICK: Use broom (effective agianst Litter and Little Monsters)", .35, .35, 0, c_aqua, c_aqua, c_blue, c_blue, 1)

draw_text_transformed_color(room_width / 2, 430, "Objective", .5, .5, 0, c_aqua, c_aqua, c_green, c_green, 1)
draw_text_transformed_color(room_width / 2, 520, "Survive the Horder!\nClean the city (too much litter and you lose health)", .35, .35, 0, c_aqua, c_aqua, c_blue, c_blue, 1)