function Camera_ResizeDisplay() {
	var viewport = room_get_viewport(room, 0);

	global.physical_display_height = display_get_height();
	global.physical_display_width = display_get_width();

	window_set_size(min(global.initial_width, global.physical_display_width), min(global.initial_height, global.physical_display_height));



}
