///screen_resize()
//resizes and reposition all the views 
//also resizes the application surface

var window_width = window_get_width();
var window_height = window_get_height();

var header_height = 20;
var footer_height = 20;
var menu_width = 200;

var zoom = view_get_zoom();


view_xport[game_view] = 0;
view_yport[game_view] = header_height;
view_wport[game_view] = window_width - menu_width;
view_hport[game_view] = window_height - header_height - footer_height;

view_xport[menu_view] = window_width - menu_width;
view_yport[menu_view] = header_height;
view_wport[menu_view] = menu_width;
view_hport[menu_view] = window_height - header_height - footer_height;

view_xport[header_view] = 0;
view_yport[header_view] = 0;
view_wport[header_view] = window_width;
view_hport[header_view] = header_height;

view_xport[footer_view] = 0;
view_yport[footer_view] = window_height - footer_height;
view_wport[footer_view] = window_width;
view_hport[footer_view] = footer_height;

view_set_zoom(zoom);

view_wview[menu_view] = view_wport[menu_view];
view_hview[menu_view] = view_hport[menu_view];

view_wview[header_view] = view_wport[header_view];
view_hview[header_view] = view_hport[header_view];

view_wview[footer_view] = view_wport[footer_view];
view_hview[footer_view] = view_hport[footer_view];
