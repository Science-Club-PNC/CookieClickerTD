//Writing text in the info banner. For deeper investigation check the input_selection_get script
with obj_selection_controller
{
    if selection_type == 1
    {
        var i;
        for(i=1; i<=3; i+=1)
        {
            switch(i)
            {
                case 1:
                show_message("Damage: " + string(selection.hit_damage));
                break;
                
                case 2:
                show_message("Firerate: " + string(selection.hit_speed));
                break;
                
                case 3:
                show_message("Range: " + string(selection.hit_range));
                break;
                
            } 
        }
    }
}
