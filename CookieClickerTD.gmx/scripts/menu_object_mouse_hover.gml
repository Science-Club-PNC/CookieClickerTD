///menu_object_mouse_hover(object)
//returns if the mouse is currently hovering above the object

with(argument0)
{
    var found_mouse_x, found_mouse_y;

    if (parent_view == -1)
    {
        found_mouse_x = display_mouse_get_x();
        found_mouse_y = display_mouse_get_y();
    }
    else
    {
        if !view_mouse_inside(parent_view)
        {
            continue;
        }
        
        found_mouse_x = window_view_mouse_get_x(parent_view);
        found_mouse_y = window_view_mouse_get_y(parent_view);
    }
    
    if point_in_rectangle(found_mouse_x, found_mouse_y, x, y, x + width, y + height)
    {
        return true
    }
}

return false;
