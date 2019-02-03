/// @description Step function for o_player
// You can write your code in this editor

image_index = current_level - 1;
image_xscale = current_level -1;
image_yscale = current_level -1;

key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

var h_accel = key_right * acceleration + -1 * key_left * acceleration;
if (h_accel = 0) {
	h_accel = -1 * sign(h_speed) * deceleration;
}
if (h_speed > 0) {
	h_speed = min(max_move_speed, h_speed + h_accel);
} else {
	h_speed = max(-max_move_speed, h_speed + h_accel);
}

var v_accel = key_down * acceleration + -1 * key_up * acceleration;
if (v_accel = 0) {
	v_accel = -1 * sign(v_speed) * deceleration;
}
if (v_speed > 0) {
	v_speed = min(max_move_speed, v_speed + v_accel);
} else {
	v_speed = max(-max_move_speed, v_speed + v_accel);
}

if (x + h_speed >= room_width || x + h_speed <= 0) {
	while (x + sign(h_speed) < room_width && x + sign(h_speed) > 0) {
		x += sign(h_speed);
	}
	h_speed = 0;
}

if (y + v_speed >= room_height || y + v_speed <= 0) {
	while (y + sign(v_speed) < room_height && y + sign(v_speed) > 0) {
		y += sign(v_speed);
	}
	v_speed = 0;
}
x = x + h_speed;
y = y + v_speed;

var colliding_enemy = instance_place(x, y, o_enemy);
if (colliding_enemy != noone) {
	with (colliding_enemy) {
		if (level < other.current_level) {
			EnemyDie();
			other.current_xp += level;
		} else {
			PlayerDie("You got et.\nYour final score was " + string(other.current_xp) + ".");
		}
	}
}

if (x < 0 || x > room_width || y < 0 || y > room_height) {
	PlayerDie("You fell out of the world.");
}

while (current_xp >= GetExperienceRequired(current_level + 1) && current_level < max_level) {
	show_debug_message("Level up! " + string(current_level) + " -> " + string(current_level + 1));
	current_level += 1;
}