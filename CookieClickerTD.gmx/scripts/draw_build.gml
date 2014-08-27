///draw_build()
//draws the build in the current view

with(obj_banner_controller)
{
    //init base position variables
    var build_left = 0;
    var build_top = build_height - build_max_height;
    var build_right = build_left + view_wview[view_banner] - 1;
    var build_bottom = build_height;

    //draw build menu
    if (build_anim_state > 0)
    {
        //draw background
        if surface_exists(background_surf)
        {
            draw_surface_part(background_surf, 0, 0, view_wview[view_banner], build_bottom, build_left, 0);
        }
        
        //draw border
        draw_background(back_menu_hborder, background_get_width(back_menu_vborder), build_bottom - background_get_height(back_menu_hborder));
        
        //draw titel
        draw_set_font(font_header);
        draw_set_colour(c_white);
        draw_text(build_left + 18, build_top + 2, "Build");
        
        //draw build button types
        draw_background(back_melee_icon, build_buttons[0].x - 30, build_buttons[0].y);
        draw_background(back_ranged_icon, build_buttons[3].x - 30, build_buttons[3].y);
        draw_background(back_wall_icon, build_buttons[6].x, build_buttons[6].y - 30);
        
        //draw build buttons
        for (var i = 0; i < build_buttons_amount; i++)
        {
            with (build_buttons[i])
            {                
                switch (build_size)
                {
                    case 1:
                    draw_background(back_build_1x1, x, y);
                    break;
                    case 2:
                    draw_background(back_build_2x2, x, y);
                    break;
                    case 3:
                    draw_background(back_build_3x3, x, y);
                    break;
                }
                
                if (mouse_hover or selected)
                {
                    if (pressed)
                    {
                        draw_set_colour(c_black);
                    }
                    else
                    {
                        draw_set_colour(c_white);
                    }
                    draw_set_alpha(0.4);
                    draw_rectangle(x, y, x + width - 1, y + height - 1, false);
                    draw_set_alpha(1);
                }
            }
        }
    }
}