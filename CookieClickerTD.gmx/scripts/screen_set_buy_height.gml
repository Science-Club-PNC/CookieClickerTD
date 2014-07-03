///screen_set_buy_height(height)
//sets buy height and moves UI accordingly

var height = argument0;

with (obj_stats_controller)
{
    buy_height = height;    

    var buy_left = 0;
    var buy_top = buy_height - buy_max_height;
    var buy_right = buy_left + view_wview[view_stats] - 1;
    var buy_bottom = buy_height;

    for (var i = 0; i < buy_buttons_amount; i++)
    {
        with (buy_buttons[i])
        {
            x = buy_left + other.buy_buttons_x[i];
            y = buy_top + other.buy_buttons_y[i];
        }
    }
}

