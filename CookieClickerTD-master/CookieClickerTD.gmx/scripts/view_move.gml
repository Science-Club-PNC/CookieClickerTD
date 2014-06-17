///view_move(dx, dy)
//moves the view by (dx, dy) pixels



var clamp_sides = 0;
//0 = none
//1 = horizontal
//2 = vertical
//3 = both

view_xview[game_view] += argument0;
view_yview[game_view] += argument1;

if (view_xview[game_view] < 0)
{
    view_xview[game_view] = 0;
    clamp_sides = 1;
}
else if (view_xview[game_view] > room_width - view_wview[game_view])
{
    view_xview[game_view] = room_width - view_wview[game_view];
    clamp_sides = 1;
}

if (view_yview[game_view] < 0)
{
    view_yview[game_view] = 0;
    clamp_sides += 2;
}
else if (view_yview[game_view] > room_height - view_hview[game_view])
{
    view_yview[game_view] = room_height - view_hview[game_view];
    clamp_sides += 2;
}

return clamp_sides;
