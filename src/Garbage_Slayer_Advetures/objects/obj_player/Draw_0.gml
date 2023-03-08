/// @description Insert description here
// You can write your code in this editor

// Shader: Changing Player color when hit
if draw_immunity == true {
	// Reference: https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Asset_Management/Shaders/shader_reset.htm
	shader_set(s_player_color)
	draw_self()
	shader_reset()
	
} else {
	draw_self()
}
