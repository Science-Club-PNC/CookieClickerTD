///draw_header()
//draws the header in the current view

var text_ground = view_hview[view_header];

//draw background
draw_background_tiled(back_menu_noise, 0, 0);

//draw border
var border_height = 3;

draw_set_colour(c_ltgray);

for (var i = 0; i < border_height; i++)
{
    draw_set_alpha((1 - (i/border_height))/2);
    draw_rectangle(0, view_hview[view_header] - i - 1, view_wview[view_footer], view_hview[view_header] - i - 1, false);
}

draw_set_alpha(1);

//draw texts
draw_set_colour(c_ltgray);
draw_set_font(font_header);
draw_set_valign(fa_bottom);

draw_text(2, text_ground, "cookies: " + string(obj_money_controller.money));
draw_text(152, text_ground, "zoom: " + string(round(obj_view_controller.zoom*10)*10) + "%");

draw_set_valign(fa_top);
