///draw_stats()
//draws the stats in the current view
with(obj_stats_controller)
{
    //init base position variables
    var build_left = 0;
    var build_top = build_height - build_max_height;
    var build_right = build_left + view_wview[view_stats] - 1;
    var build_bottom = build_height;
    
    var stats_left = stats_max_width - stats_width;
    var stats_top = build_height;
    var stats_right = stats_left + view_wview[view_stats] - 1;
    var stats_bottom = view_hview[view_stats] - 1;
    
    //draw build menu
    if (build_anim_state > 0)
    {
        //draw background
        if surface_exists(background_surf)
        {
            draw_surface_part(background_surf, 0, 0, view_wview[view_stats], build_bottom, build_left, 0);
        }
        
        //draw border
        draw_background(back_menu_hborder, background_get_width(back_menu_vborder), build_bottom - background_get_height(back_menu_hborder));
        
        //draw titel
        draw_set_font(font_header);
        draw_set_colour(c_white);
        draw_text(build_left + 18, build_top + 2, "Build");
        
        //draw build buttons
        for (var i = 0; i < build_buttons_amount; i++)
        {
            with (build_buttons[i])
            {
                if (mouse_hover or selected)
                {
                    if (pressed)
                    {
                        draw_set_colour(c_black);
                    }
                    else
                    {
                        draw_set_colour(c_dkgray);
                    }      
                }
                else
                {
                    draw_set_colour(c_white);
                }
                draw_rectangle(x, y, x + width, y + height, false);
            }
        }
    }
    
    //draw stats menu
    if (stats_anim_state > 0)
    {
        //draw background
        if surface_exists(background_surf)
        {
            draw_surface_part(background_surf, 0, stats_top, view_wview[view_stats], stats_bottom, stats_left, stats_top);
        }

        //draw titel
        draw_set_font(font_header);
        draw_set_colour(c_white);
        draw_text(stats_left + 18, stats_top + 2, "Info");
    }
}
