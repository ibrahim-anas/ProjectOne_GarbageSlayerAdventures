/// @description Insert description here
// You can write your code in this editor

// Kill Litter Monster
instance_destroy(other)
audio_play_sound(snd_monster_death, 1, false)
score += 20