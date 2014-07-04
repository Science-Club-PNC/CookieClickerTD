///input_view_wheel_up()
//zoom in

with (obj_view_controller)
{
    var zoom_step = 0.2;
    var rounded_zoom = round(zoom/zoom_step)*zoom_step
    var next_zoom = rounded_zoom + zoom_step;
    
    if(next_zoom <= 4)
    {
        zoom = next_zoom;
        view_set_zoom(zoom);
    }
}
