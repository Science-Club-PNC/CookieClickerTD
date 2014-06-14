///view_set_zoom(zoom)
//calcs amd sets a new zoom factor

var zoom = argument0;
var zoom_factor = zoom/view_get_zoom();

var zoom_x, zoom_y, dif_x, dif_y;
if view_mouse_inside(game_view)
{
    zoom_x = mouse_x;
    zoom_y = mouse_y;
    dif_x = mouse_x - view_xview[game_view];
    dif_y = mouse_y - view_yview[game_view];
}
else
{
    dif_x = view_wview[game_view]/2;
    dif_y = view_hview[game_view]/2;
    zoom_x = view_xview[game_view] + dif_x;
    zoom_y = view_yview[game_view] + dif_y;
}

view_wview[game_view] = view_wport[game_view]/zoom;
view_hview[game_view] = view_hport[game_view]/zoom;

view_xview[game_view] = zoom_x - dif_x/zoom_factor;
view_yview[game_view] = zoom_y - dif_y/zoom_factor;
