///input_king_cookie_left_released()

with (obj_king_cookie)
{
    image_xscale = base_xscale;
    image_yscale = base_yscale;
    
    pressed = false;
    
    if (position_meeting(view_mouse_x(), view_mouse_y(), id))
    {
        instance_create(view_mouse_x(), view_mouse_y(), obj_plusone)
        
        obj_money_controller.money += 1;
    }
}

