/// @description Insert description here
// You can write your code in this editor


if (!instance_exists(o_player)) {
	draw_text_transformed(room_width / 2, room_height / 2,
		"Game Over!\n" + global.death_reason 
		+ "\nPress (R) to restart.", 2, 2, 0);
	
	draw_get_halign();
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_set_alpha(1);
}