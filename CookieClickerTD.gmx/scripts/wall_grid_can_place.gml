///wall_grid_can_place(x, y, size)
//checks if the selected area is free and does not block the enemies from going to the king cookie.

var abs_x = argument0*tile_size; 
var abs_y = argument1*tile_size;

//prevent player from placing multiple towers on the same place
if (collision_rectangle( abs_x, abs_y, abs_x + argument2*tile_size - 1, abs_y + argument2*tile_size - 1, obj_wall, false, false )|| collision_rectangle( abs_x, abs_y, abs_x + argument2*tile_size - 1, abs_y + argument2*tile_size - 1, obj_king_cookie, false, false ) )
{
    return false;
}
//temporary add wall to wall grid to test
wall_grid_add_area(abs_x, abs_y, abs_x + argument2*tile_size - 1, abs_y + argument2*tile_size - 1);

//loop through all spawners to check if they can go to the spawner
with(obj_spawner)
{
    //init an empty path
    var new_path = path_add();
    
    //find path from enemy to king cookie and assign it to new_path
    var sucseed = mp_grid_path(global.wall_grid, new_path, x, y, obj_king_cookie.x, obj_king_cookie.y, true);
    
    if (!sucseed)
    {
        //remove temporary wall
        wall_grid_remove_area(abs_x, abs_y, abs_x + argument2*tile_size - 1, abs_y + argument2*tile_size - 1);
        
        return false;
    }
}

//remove temporary wall
wall_grid_remove_area(abs_x, abs_y, abs_x + argument2*tile_size - 1, abs_y + argument2*tile_size - 1);

return true;

