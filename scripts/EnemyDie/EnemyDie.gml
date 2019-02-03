/// @description Must be called from within the context of o_enemy.
/// Handles taking care of the enemy's death.

var enemy_level = self.level;
with (o_room_control) {
	total_enemies_spawned -= 1
	enemies_spawned[? enemy_level] -= 1;
}

instance_destroy();