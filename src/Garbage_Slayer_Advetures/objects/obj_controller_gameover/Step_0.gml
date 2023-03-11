/// @description Insert description here
// You can write your code in this editor

// cheat code to take player straight to the highscore screen and set score randomly
if keyboard_check_pressed(ord("P")) {
	score = irandom_range(1, 500)
	room_goto(rm_highscore)
}