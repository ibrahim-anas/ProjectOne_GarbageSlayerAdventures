/// @description Insert description here
// You can write your code in this editor

randomise()

// Variable Set-ups
speed = 1.7
direction = random(360)

// Timeline for increasing movement speed
// The video goes over timeline variables, how to set timeline_speed to match seconds
// And how to create timeline objects
// Reference: https://www.youtube.com/watch?v=_WyZ9rxbS5M
timeline_index = tl_enemy_speed
timeline_speed = 1/room_speed
timeline_running = true