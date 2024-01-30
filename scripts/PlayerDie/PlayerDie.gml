function PlayerDie(argument0) {
	global.death_reason = argument0;
	instance_destroy(o_player);


}
