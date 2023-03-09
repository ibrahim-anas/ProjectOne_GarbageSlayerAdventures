/// @description Draw credits on screen upon entering rm_credits
draw_set_font(fnt_global)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed_color(room_width / 2, 280, "Credits", .5, .5, 0, c_aqua, c_aqua, c_green, c_green, 1)
draw_text_transformed_color(room_width / 2, 390, "Producer          Anas Ibrahim\nDesigner          Ria Banerjee\nProgrammer          Willy Leung\nArtist          Kiana Manning", .35, .35, 0, c_aqua, c_aqua, c_blue, c_blue, 1)