///screen_set_stats_width(width)
//set stats view's width and resizes the game view accordingly

var window_width = window_get_width();
var stats_width = argument0;

obj_stats_controller.stats_width = stats_width;

view_wport[game_view] = window_width - stats_width;
view_wport[stats_view] = stats_width;
view_xport[stats_view] = window_width - stats_width;

view_wview[stats_view] = view_wport[stats_view];
view_wview[game_view] = view_hview[game_view]/view_hport[game_view]*view_wport[game_view];

view_clamp();
