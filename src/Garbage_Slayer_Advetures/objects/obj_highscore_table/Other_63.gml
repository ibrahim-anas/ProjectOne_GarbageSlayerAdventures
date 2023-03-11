/// @description Insert description here
// You can write your code in this editor
	
// GameMaker Documentation Reference: https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Asynchronous_Functions/Dialog/get_string_async.htm
// Getting input id
input_id = ds_map_find_value(async_load, "id")
if input_id == input {
		
	// Getting if player clicked Okay or Cancel
	decision = ds_map_find_value(async_load, "status")
		
	// If Player pressed Okay
	if decision == true {
			
		// Getting input string
		playerName = ds_map_find_value(async_load, "result")
		highscore_add(playerName, score);
		draw = true
	}
	draw = true
}


