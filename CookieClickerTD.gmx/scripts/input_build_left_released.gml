///input_build_left_released()
//Create tower
with (obj_build_controller)
{
    if (enabled and build_pressed and (build_htile == (view_mouse_x() div tile_size)) and (build_vtile == (view_mouse_y() div tile_size)))
    {
        if (build_type < 0)
        {
            var price = 10;
            if (obj_money_controller.money >= price)
            {
                if (block_can_place(build_htile, build_vtile, build_size))
                {
                    instance_create(build_htile * tile_size, build_vtile * tile_size, obj_wall);
                    obj_money_controller.money -= price;
                }
            }
        }
        else
        {
            var price = 30;
            if (obj_money_controller.money >= price)
            {
                if (tower_create(floor(view_mouse_x()/tile_size), floor(view_mouse_y()/tile_size), build_type, 0, build_size) != noone)
                {
                    obj_money_controller.money -= price;
                }
            }
            
        }
    }
    build_pressed = false;
}
