///view_clamp

var zoom_clamp = max(view_wview[game_view]/room_width, view_hview[game_view]/room_height);

if (zoom_clamp > 1)
{
    view_wview[game_view] /= zoom_clamp;
    view_hview[game_view] /= zoom_clamp;
    
    obj_view_controller.zoom = view_get_zoom();
}

var clamp_sides = 0;
//0 = none
//1 = horizontal
//2 = vertical
//3 = both

if (view_xview[game_view] < 0)
{
    view_xview[game_view] = 0;
}
else if (view_xview[game_view] > room_width - view_wview[game_view])
{
    view_xview[game_view] = room_width - view_wview[game_view];
}

if (view_yview[game_view] < 0)
{
    view_yview[game_view] = 0;
}
else if (view_yview[game_view] > room_height - view_hview[game_view])
{
    view_yview[game_view] = room_height - view_hview[game_view];
}
