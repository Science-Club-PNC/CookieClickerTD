///view_clamp

var zoom_clamp = max(view_wview[view_game]/room_width, view_hview[view_game]/room_height);

if (zoom_clamp > 1)
{
    view_wview[view_game] /= zoom_clamp;
    view_hview[view_game] /= zoom_clamp;
    
    obj_view_controller.zoom = view_get_zoom();
}

var clamp_sides = 0;
//0 = none
//1 = horizontal
//2 = vertical
//3 = both

if (view_xview[view_game] < 0)
{
    view_xview[view_game] = 0;
}
else if (view_xview[view_game] > room_width - view_wview[view_game])
{
    view_xview[view_game] = room_width - view_wview[view_game];
}

if (view_yview[view_game] < 0)
{
    view_yview[view_game] = 0;
}
else if (view_yview[view_game] > room_height - view_hview[view_game])
{
    view_yview[view_game] = room_height - view_hview[view_game];
}
