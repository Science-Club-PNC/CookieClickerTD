///view_move(dx, dy)
//moves the view by (dx, dy) pixels



var clamp_sides = 0;
//0 = none
//1 = horizontal
//2 = vertical
//3 = both

view_xview[view_game] += argument0;
view_yview[view_game] += argument1;

if (view_xview[view_game] < 0)
{
    view_xview[view_game] = 0;
    clamp_sides = 1;
}
else if (view_xview[view_game] > room_width - view_wview[view_game])
{
    view_xview[view_game] = room_width - view_wview[view_game];
    clamp_sides = 1;
}

if (view_yview[view_game] < 0)
{
    view_yview[view_game] = 0;
    clamp_sides += 2;
}
else if (view_yview[view_game] > room_height - view_hview[view_game])
{
    view_yview[view_game] = room_height - view_hview[view_game];
    clamp_sides += 2;
}

return clamp_sides;
