/// @description Insert description here
// You can write your code in this editor

var max_enemies_per_level = 5;
if (instance_exists(o_player)) {
	var max_enemies_total = o_player.current_level * 5 + 5;

	time_since_last_spawn += 1;


	var spawned = 0;
	if (time_since_last_spawn >= next_spawn) {
		// go in reverse order, 50% chance to spawn each level.
		for (var i = o_player.current_level - 1; i >= 0; i--) {
			if (spawned == 0 && enemies_spawned[? (i + 1)] < max_enemies_per_level && random(1) > 0.5) {
				// spawn enemy
				SpawnEnemy(i + 1);
				spawned = i + 1;
				show_debug_message("Spawned enemy level " + string(i + 1) 
					+ " after " + string(time_since_last_spawn / room_speed) + " seconds");
			}
		}
	
		if (spawned > 0) {
			total_enemies_spawned += 1;
			enemies_spawned[? spawned] += 1;
			time_since_last_spawn = 0;
			next_spawn = random(room_speed * 2) + room_speed * 0.5;
		}
	}
}

if(keyboard_check_pressed(ord("R"))) {
	game_restart();
}
