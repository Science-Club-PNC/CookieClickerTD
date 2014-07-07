///input_selection_left_pressed()

with (obj_selection_controller)
{
    var found_selection = input_selection_get();
    
    selection = found_selection[0];
    selection_type = found_selection[1];
}
