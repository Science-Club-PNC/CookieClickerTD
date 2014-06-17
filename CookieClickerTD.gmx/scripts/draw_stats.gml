///draw_stats()
//draws the stats in the current view

draw_clear("c_black");

with(obj_stats_controller)
{
    draw_set_font(font_debug);
    draw_text(0, buy_height - buy_max_height, "Shop");
    draw_text(0, buy_height, "Info")
}
