///input_selection_get()
//returns what selectable the mouse currently is hovering over
//returning {selection, selection_type}

//return array
var found_selection;

//search enemy under mouse
var found_enemy = instance_position(view_mouse_x(), view_mouse_y(), obj_enemy);
//return enemy as selection if it's flying
if (found_enemy != noone and found_enemy.is_flying)
{
    found_selection[0] = found_enemy;
    found_selection[1] = 4;
    return found_selection;
}

//search block under mouse
var found_block = instance_position(view_mouse_x(), view_mouse_y(), obj_block);
//return block as selection if selectable
if (found_block != noone)
{
    with (found_block)
    {
        if (object_index == obj_tower)
        {
            found_selection[0] = id;
            found_selection[1] = 1;
            return found_selection;
        }
        if (object_index == obj_wall)
        {
            found_selection[0] = id;
            found_selection[1] = 2;
            return found_selection;
        }
    }
}

//return enemy as selection
if (found_enemy != noone)
{
    found_selection[0] = found_enemy;
    found_selection[1] = 4;
    return found_selection;
}

//return an empty selection
found_selection[0] = noone;
found_selection[1] = 0;
return found_selection;
