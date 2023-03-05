/// @description Insert description here
// You can write your code in this editor

// Damage
if immunity == false {
	health = health - 50
}

// Brief immunity after damage
if immunity_duration == false {
	immunity_duration = true
	immunity = true
	draw_immunity = true
	alarm[2] = 40
}

// Player Appearance is in the Draw Event