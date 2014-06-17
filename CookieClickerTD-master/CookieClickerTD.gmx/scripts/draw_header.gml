///draw_header()
//draws the header in the current view

draw_clear("c_black");

draw_set_color(c_white);
draw_text(0, 0, "cookies: "+string(obj_money_controller.money));
