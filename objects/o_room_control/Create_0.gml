randomize();

global.death_reason = undefined;

global.initial_height = window_get_height();
global.initial_width = window_get_width();

enemies_spawned = ds_map_create();
for(var i = 1; i <= 10; i++) {
	enemies_spawned[? i] = 0;
}

total_enemies_spawned = 0;

time_since_last_spawn = 0;
next_spawn = random(room_speed);
current_value = undefined;