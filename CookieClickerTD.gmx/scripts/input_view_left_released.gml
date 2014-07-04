///input_view_left_released()
//disable mouse drag if middle mouse button is not pressed

if !mouse_check_button(mb_middle)
{
    with (obj_view_controller)
    {
        mouse_drag = false;
    }
}
