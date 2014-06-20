///view_set_zoom(zoom)
//calcs amd sets a new zoom factor

var zoom = argument0;
var zoom_factor = zoom/view_get_zoom();

var zoom_x, zoom_y, dif_x, dif_y;
if view_mouse_inside(view_game)
{
    zoom_x = view_mouse_x();
    zoom_y = view_mouse_y();
    dif_x = view_mouse_x() - view_xview[view_game];
    dif_y = view_mouse_y() - view_yview[view_game];
}
else
{
    dif_x = view_wview[view_game]/2;
    dif_y = view_hview[view_game]/2;
    zoom_x = view_xview[view_game] + dif_x;
    zoom_y = view_yview[view_game] + dif_y;
}

view_wview[view_game] = view_wport[view_game]/zoom;
view_hview[view_game] = view_hport[view_game]/zoom;

view_xview[view_game] = zoom_x - dif_x/zoom_factor;
view_yview[view_game] = zoom_y - dif_y/zoom_factor;

view_clamp();
