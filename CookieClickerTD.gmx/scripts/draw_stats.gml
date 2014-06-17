///draw_stats()
//draws the stats in the current view
with(obj_stats_controller)
{
    view_xview[view_stats] = stats_width - stats_max_width
    
    draw_set_colour(c_black);
    draw_rectangle(0, 0, view_wview[view_stats], view_hview[view_stats], false);
    
    draw_set_colour(c_white);
    draw_set_font(font_debug);
    draw_text(0, buy_height - buy_max_height, "Shop");
    draw_text(0, buy_height, "Info")
}
