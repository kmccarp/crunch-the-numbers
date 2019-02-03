/// @description draw gui for o_player
// You can write your code in this editor

// draw instructions
draw_set_color(c_olive);
//font_add_enable_aa(false);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text_transformed(room_width - 300, 50, "Avoid: " + string(current_level), 3, 3, 0);

// draw health bar
var health_bar_width = 200;
var health_bar_padding = 2;
var health_bar_height = 10;
var health_bar_color = c_green;

var health_bar_x = 50;
var health_bar_y = room_height - 50;
/*
draw_set_color(c_white);
draw_rectangle(health_bar_x, health_bar_y, health_bar_x + health_bar_width, health_bar_y + health_bar_height, false)

var inner_health_bar_width = (200 - health_bar_padding * 2) * 1;
var inner_health_bar_height = health_bar_height - health_bar_padding * 2;
draw_set_color(health_bar_color);
draw_rectangle(health_bar_x + health_bar_padding, health_bar_y + health_bar_padding,
	health_bar_x + health_bar_padding + inner_health_bar_width,
	health_bar_y + health_bar_padding + inner_health_bar_height,
	false);
*/

// draw xp bar
var xp_bar_width = 200;
var xp_bar_height = 10;
var xp_bar_padding = 2;
var xp_bar_color = c_purple;

var xp_bar_x = health_bar_x;
var xp_bar_y = health_bar_y + health_bar_height + 5;

draw_set_color(c_white);
draw_rectangle(xp_bar_x, xp_bar_y, xp_bar_x + xp_bar_width, xp_bar_y + xp_bar_height, false)

//show_debug_message(string(current_level));
var current_xp_current_level = current_xp - GetExperienceRequired(current_level);
var required_xp_for_next_level = GetExperienceRequired(current_level + 1) - GetExperienceRequired(current_level);
var scale = max(0, min(1, current_xp_current_level / required_xp_for_next_level));

var inner_xp_bar_width = (200 - xp_bar_padding * 2) * scale;
var inner_xp_bar_height = xp_bar_height - xp_bar_padding * 2;
draw_set_color(xp_bar_color);
draw_rectangle(xp_bar_x + xp_bar_padding, xp_bar_y + xp_bar_padding,
	xp_bar_x + xp_bar_padding + inner_xp_bar_width,
	xp_bar_y + xp_bar_padding + inner_xp_bar_height,
	false);
	
// draw score
draw_set_color(c_white);
draw_text_transformed(xp_bar_x, xp_bar_y - 50, "Score: " + string(current_xp), 1.5, 1.5, 0);