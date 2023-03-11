/// @description Draw credits on screen upon entering rm_credits
draw_set_font(fnt_credits)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed_color(room_width / 2, 110, "Controls", .3, .3, 0, c_orange, c_orange, c_orange, c_orange, 1)
draw_text_transformed_color(room_width / 2, 290, "W,A,S,D: Move\nLEFT CLICK: Shoot water gun (effective against Fire Monsters)\nRIGHT CLICK: Use broom (effective against Litter and Litter Monsters)", .2, .2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)

draw_text_transformed_color(room_width / 2, 530, "Objective", .3, .3, 0, c_orange, c_orange, c_orange, c_orange, 1)
draw_text_transformed_color(room_width / 2, 740, "The city is under siege by pollution monsters!\nClean the city and remove all litter and monsters!\n\n Be careful, you lose health if there are too much litter...", .2, .2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)

draw_text_transformed_color(room_width / 2, room_height - 72, "Press 'R' to return to the Main Menu", .13, .13, 0, c_orange, c_orange, c_orange, c_orange, 1)