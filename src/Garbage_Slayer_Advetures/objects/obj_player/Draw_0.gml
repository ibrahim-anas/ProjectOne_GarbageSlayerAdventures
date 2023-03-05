/// @description Insert description here
// You can write your code in this editor

// Shader: Changing Player color when hit
if draw_immunity == true {
	// Reference (https://www.youtube.com/watch?v=mVao4aP0Hg0)
	shader_set(s_player_color)
	draw_self()
	shader_reset()
	
} else {
	draw_self()
}
