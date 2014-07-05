///input_build_left_pressed()

with (obj_build_controller)
{
    build_pressed = true;
    build_htile = view_mouse_x() div tile_size;
    build_vtile = view_mouse_y() div tile_size;
}
