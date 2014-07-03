///draw_stats()
//draws the stats in the current view
with(obj_stats_controller)
{
    //init base position variables
    var buy_left = 0;
    var buy_top = buy_height - buy_max_height;
    var buy_right = buy_left + view_wview[view_stats] - 1;
    var buy_bottom = buy_height;
    
    var stats_left = stats_max_width - stats_width;
    var stats_top = buy_height;
    var stats_right = stats_left + view_wview[view_stats] - 1;
    var stats_bottom = view_hview[view_stats] - 1;
    
    //draw buy menu
    if (buy_anim_state > 0)
    {
        //draw background
        if surface_exists(background_surf)
        {
            draw_surface_part(background_surf, 0, 0, view_wview[view_stats], buy_bottom, buy_left, 0);
        }
        
        //draw border
        draw_background(back_menu_hborder, background_get_width(back_menu_vborder), buy_bottom - background_get_height(back_menu_hborder));
        
        //draw titel
        draw_set_font(font_header);
        draw_set_colour(c_white);
        draw_text(buy_left + 18, buy_top + 2, "Shop");
        
        //draw buy buttons
        for (var i = 0; i < buy_buttons_amount; i++)
        {
            with (buy_buttons[i])
            {
                if (mouse_hover)
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
