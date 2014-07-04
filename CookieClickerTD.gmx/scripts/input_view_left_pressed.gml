///input_view_left_pressed()
//enable mouse drag if control is pressed

with(obj_view_controller)
{
    mouse_drag = true;
    
    mouse_last_x = view_mouse_x();
    mouse_last_y = view_mouse_y();
}

