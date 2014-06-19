///draw_footer()
//draws the footer in the current view

draw_background_tiled(back_menu_noise, 0, 0);

var border_height = 3;

draw_set_colour(c_ltgray);

for (var i = 0; i < border_height; i++)
{
    draw_set_alpha((1 - (i/border_height))/2);
    draw_rectangle(0, i, view_wview[view_footer], i, false);
}

draw_set_alpha(1);
