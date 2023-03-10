/// @description Draw credits on screen upon entering rm_credits
draw_set_font(fnt_credits)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed_color(room_width / 2, 120, "Credits", .4, .4, 0, c_orange, c_orange, c_orange, c_orange, 1)
draw_text_transformed_color(room_width / 2, 460, "Producer          Anas Ibrahim\nDesigner          Ria Banerjee\nProgrammer          Willy Leung\nArtist          Kiana Manning", .3, .3, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1)

draw_text_transformed_color(room_width / 2, room_height - 72, "Press 'R' to return to the Main Menu", .14, .14, 0, c_orange, c_orange, c_orange, c_orange, 1)