function EnemyMove() {
	var move_lr = floor(random(3)) - 1;
	var move_ud = floor(random(3)) - 1;

	var h_accel = move_lr * acceleration;
	if (h_accel = 0) {
	  h_accel = -1 * sign(h_speed) * deceleration;
	}
	if (h_speed > 0) {
	  h_speed = min(max_move_speed, h_speed + h_accel);
	} else {
	  h_speed = max(-max_move_speed, h_speed + h_accel);
	}

	var v_accel = move_ud * acceleration;
	if (v_accel = 0) {
	  v_accel = -1 * sign(v_speed) * deceleration;
	}
	if (v_speed > 0) {
	  v_speed = min(max_move_speed, v_speed + v_accel);
	} else {
	  v_speed = max(-max_move_speed, v_speed + v_accel);
	}

	if (x + h_speed < room_width && x + h_speed > 0) {
	  x = x + h_speed;
	}
	if (y + v_speed < room_height && y + v_speed > 0) {
	  y = y + v_speed;
	}


}
