///screen_set_build_height(height)
//sets build height and moves UI accordingly

var height = argument0;

with (obj_stats_controller)
{
    build_height = height;    

    var build_left = 0;
    var build_top = build_height - build_max_height;
    var build_right = build_left + view_wview[view_stats] - 1;
    var build_bottom = build_height;

    for (var i = 0; i < build_buttons_amount; i++)
    {
        with (build_buttons[i])
        {
            x = build_left + other.build_buttons_x[i];
            y = build_top + other.build_buttons_y[i];
        }
    }
}

