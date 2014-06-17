///view_mouse_inside(view)
//returns true if the mouse is inside the view port

return point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), view_xport[argument0], view_yport[argument0], view_xport[argument0] + view_wport[argument0], view_yport[argument0] + view_hport[argument0]);
