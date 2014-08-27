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

        if selection_type == 1
        {
            var i;
            for(i=1; i<=3; i+=1)
            {
                switch(i)
                {
                    case 1:
                    draw_text(stats_left + 18, stats_top + 22, "Damage: " + string(selection.hit_damage));
                    break;
                
                    case 2:
                    draw_text(stats_left + 18, stats_top + 42, "Firerate: " + string(selection.hit_speed));
                    break;
                
                    case 3:
                    draw_text(stats_left + 18, stats_top + 62, "Range: " + string(selection.hit_range));
                    break;
                
                } 
            }
        }
    }
}
