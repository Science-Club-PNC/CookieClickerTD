///view_move(dx, dy)
//moves the view by (dx, dy) pixels

var did_not_clamp = true;

view_xview[view_current] += argument0;
view_yview[view_current] += argument1;

if (view_xview[view_current] < 0)
{
    view_xview[view_current] = 0;
    did_not_clamp = false;
}
else if (view_xview[view_current] > room_width - view_wview[view_current])
{
    view_xview[view_current] = room_width - view_wview[view_current];
    did_not_clamp = false;
}

if (view_yview[view_current] < 0)
{
    view_yview[view_current] = 0;
    did_not_clamp = false;
}
else if (view_yview[view_current] > room_height - view_hview[view_current])
{
    view_yview[view_current] = room_height - view_hview[view_current];
    did_not_clamp = false;
}

return did_not_clamp;
