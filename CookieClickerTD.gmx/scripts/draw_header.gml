///draw_header()
//draws the header in the current view

draw_clear("c_black");

draw_set_colour(c_white);
draw_set_font(font_header);

draw_text(0, 0, "cookies: " + string(obj_money_controller.money));
draw_text(150, 0, "zoom: " + string(round(obj_view_controller.zoom*10)*10) + "%");
