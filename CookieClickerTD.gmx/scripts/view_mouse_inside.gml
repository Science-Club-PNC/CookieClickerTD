///view_mouse_inside(view)
//returns true if the mouse is inside the view port
var view = argument0;

if (view == view_banner)
{
    var mouse_in_build = point_in_rectangle(window_mouse_get_x(), 
        window_mouse_get_y(), 
        view_xport[view], 
        view_yport[view], 
        view_xport[view] + view_wport[view], 
        view_yport[view] + obj_banner_controller.build_height);
    var mouse_in_stats = point_in_rectangle(window_mouse_get_x(), 
        window_mouse_get_y(), 
        view_xport[view] + obj_banner_controller.stats_max_width - obj_banner_controller.stats_width, 
        view_yport[view], 
        view_xport[view] + view_wport[view], 
        view_yport[view] + view_hport[view]);
    return mouse_in_build or mouse_in_stats;
}

if ((view == view_game) and view_mouse_inside(view_banner))
{
    return false
}

return point_in_rectangle(window_mouse_get_x(), 
    window_mouse_get_y(), 
    view_xport[view], 
    view_yport[view], 
    view_xport[view] + view_wport[view], 
    view_yport[view] + view_hport[view]);
