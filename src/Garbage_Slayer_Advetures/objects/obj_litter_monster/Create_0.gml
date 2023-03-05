/// @description Insert description here
// You can write your code in this editor

// Assigning Paths randomly
randomise()
switch (irandom(2))
{
    case 0:
        paths = Path1
    break;

    case 1:
        paths = Path2
    break;
    
    case 2:
        paths = Path3
    break;

    default:
        paths = Path1
}

// Randomizing starting position on paths
path_start(paths, hsp, path_action_restart, true)
path_position = random(1)

// Variable Set ups
path_speed = hsp
dir = [0, 90, 180, 270]
check1 = true
check2 = false

// Timeline for increasing movement speed
// Reference: https://www.youtube.com/watch?v=_WyZ9rxbS5M
timeline_index = tl_enemy_speed
timeline_speed = 1/room_speed
timeline_running = true