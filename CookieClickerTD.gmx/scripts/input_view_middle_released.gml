///input_view_middle_released()
//disable mouse drag if left mouse button is not pressed

if !mouse_check_button(mb_left)
{
    with (obj_view_controller)
    {
        mouse_drag = false;
    }
}
