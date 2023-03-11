/// @description Insert description here
// You can write your code in this editor

// Playing music
if room == rm_menu and music_played == false {
	music_played = true
	audio_play_sound(snd_bgm, 1, true)
}

// Stopping music
if room == rm_lose or room == rm_win {
	audio_stop_sound(snd_bgm)
	music_played = false
}