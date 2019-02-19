///@param <enemy_level> {real} Enemy's level

var enemy_level = argument0;
var min_enemy_distance = 150;

// enemy must be at least min_enemy_distance away from the player
for (var i = 0; i < 1; i++) {
  var enemy_x = random(room_width);
  var enemy_y = random(room_height);
  while (floor(point_distance(enemy_x, enemy_y, o_player.x, o_player.y)) <= min_enemy_distance) {
    enemy_x = random(room_width);
    enemy_y = random(room_height);
  }
  show_debug_message("Spawning enemy " + string(point_distance(enemy_x, enemy_y, o_player.x, o_player.y))
    + " pixels from player.");
  var new_enemy = instance_create_layer(enemy_x, enemy_y, "Instances", o_enemy);
  new_enemy.image_speed = 0;
  new_enemy.image_index = enemy_level - 1;
  new_enemy.level = enemy_level;
}