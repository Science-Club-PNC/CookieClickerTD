///draw_banner()
//draws the banner in the current view

draw_build();
draw_stats();


//Writing text in the info banner. 
with obj_selection_controller
{
    if (obj_banner_controller.stats_anim_state > 0)
    {
        var stats_left = obj_banner_controller.stats_max_width - obj_banner_controller.stats_width;
        var stats_top = obj_banner_controller.build_height;
        var stats_middle = obj_banner_controller.stats_max_width/2;

        if selection_type == 1
        {
            //draw titel
            draw_set_font(font_header);
            draw_set_colour(c_white);
            draw_text(stats_left + stats_middle, stats_top + 2, "Tower");
            
            //draw stats
            var i;
            for(i=1; i<=3; i+=1)
            {
                switch(i)
                {
                    case 1:
                    draw_set_font(font_default);
                    draw_text(stats_left + 18, stats_top + 22, "Damage: " + string(selection.hit_damage));
                    break;
                
                    case 2:
                    draw_set_font(font_default);
                    draw_text(stats_left + 18, stats_top + 42, "Firerate: " + string(selection.hit_speed));
                    break;
                
                    case 3:
                    draw_set_font(font_default);
                    draw_text(stats_left + 18, stats_top + 62, "Range: " + string(selection.hit_range));
                    break;
                
                } 
            }
        }
        
        if selection_type == 2
        {
            //draw titel
            draw_set_font(font_header);
            draw_set_colour(c_white);
            draw_text(stats_left + stats_middle, stats_top + 2, "Wall");
            

            draw_set_font(font_default);
            draw_text(stats_left + 18, stats_top + 22, "Basic wall for protection against cursors");
            break;       
        }
        
        if selection_type == 4
        {
            //draw titel
            draw_set_font(font_header);
            draw_set_colour(c_white);
            draw_text(stats_left + stats_middle, stats_top + 2, "Enemy");
            
            var i;
            for(i=1; i<=3; i+=1)
            {
                switch(i)
                {
                    case 1:
                    draw_set_font(font_default);
                    draw_text(stats_left + 18, stats_top + 22, "Health: " + string(selection.hitpoints));
                    break;
                
                    case 2:
                    draw_set_font(font_default);
                    draw_text(stats_left + 18, stats_top + 42, "Speed: " + string(selection.movement_speed));
                    break;
                
                    case 3:
                    draw_set_font(font_default);
                    draw_text(stats_left + 18, stats_top + 62, "Armor: " + string(selection.armor_level));
                    break;
                
                } 
            }
        }
    }
}
