///screen_set_stats_width(width)
//set stats view's width and resizes the game view accordingly

var window_width = window_get_width();
var stats_width = argument0;

obj_banner_controller.stats_width = stats_width;

view_wport[view_game] = window_width - stats_width;
view_wview[view_game] = view_hview[view_game]/view_hport[view_game]*view_wport[view_game];

view_clamp();
