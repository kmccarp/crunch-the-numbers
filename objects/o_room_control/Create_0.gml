randomize();

global.death_reason = undefined;

enemies_spawned = ds_map_create();
for(var i = 1; i <= 10; i++) {
	enemies_spawned[? i] = 0;
}

total_enemies_spawned = 0;

time_since_last_spawn = 0;
next_spawn = random(room_speed);
current_value = undefined;