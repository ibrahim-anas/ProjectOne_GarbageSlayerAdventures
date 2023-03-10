/// @description Insert description here
// You can write your code in this editor

// Kill Fire Monster
instance_destroy(other)
audio_play_sound(snd_fire_extinguish, 1, false)
obj_scoreboard.points += 25

// Remove Bullet
instance_destroy()