///draw_stats()
//draws the stats in the current view
with(obj_stats_controller)
{
    var buy_left = 0;
    var buy_top = buy_height - buy_max_height;
    var buy_right = buy_left + view_wview[view_stats] - 1;
    var buy_bottom = buy_height - 1;
    
    var stats_left = stats_max_width - stats_width;
    var stats_top = buy_height;
    var stats_right = stats_left + view_wview[view_stats] - 1;
    var stats_bottom = view_hview[view_stats] - 1;
    
    draw_set_font(font_debug);    

    draw_set_colour(c_black);
    draw_rectangle(buy_left, buy_top, buy_right, buy_bottom, false);
    draw_rectangle(stats_left, stats_top, stats_right, stats_bottom, false);
    
    draw_set_colour(c_white);
    draw_rectangle(buy_left, buy_top, buy_right, buy_bottom, true);
    draw_rectangle(stats_left, stats_top, stats_right, stats_bottom, true);
        
    draw_set_colour(c_white);
    draw_text(buy_left + 2, buy_top + 2, "Shop");
    draw_text(stats_left + 2, stats_top + 2, "Info")
}
