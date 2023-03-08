/// @description Insert description here
// You can write your code in this editor

// Shader: Changing color when there are too many obj_litter instances
if instance_number(obj_litter) > obj_scoreboard.litter_quantity {
	// Getting increments for alpha_val in order to do a fade filter
	if alpha_val <= 0.3 {
		alpha_val += 0.01
	}
	
	// Reference: https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Asset_Management/Shaders/shader_reset.htm
	shader_set(s_room_filter)
	shader_set_uniform_f(transparancy, alpha_val)
	draw_self()
	shader_reset()
	
// Setting transparency to 0 when obj_litter instances are reduced
} else {
	// Fade
	if alpha_val > 0.0 {
		alpha_val -= 0.01
	}
	
	shader_set(s_room_filter)
	shader_set_uniform_f(transparancy, alpha_val)
	draw_self()
	shader_reset()
}

