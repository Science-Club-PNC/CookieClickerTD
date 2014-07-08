///draw_stats()
//draws the stats in the current view

with(obj_banner_controller)
{
    //init base position variables
    var stats_left = stats_max_width - stats_width;
    var stats_top = build_height;
    var stats_right = stats_left + view_wview[view_banner] - 1;
    var stats_bottom = view_hview[view_banner] - 1;
    
    //draw stats menu
    if (stats_anim_state > 0)
    {
        //draw background
        if surface_exists(background_surf)
        {
            draw_surface_part(background_surf, 0, stats_top, view_wview[view_banner], stats_bottom, stats_left, stats_top);
        }

        //draw titel
        draw_set_font(font_header);
        draw_set_colour(c_white);
        draw_text(stats_left + 18, stats_top + 2, "Info");
    }
}
