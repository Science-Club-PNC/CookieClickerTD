///wall_grid_remove_area(left, top, right, bottom)
//removes a wall from the wall grid

//add wall to the wall_grid
mp_grid_clear_rectangle(global.wall_grid, argument0, argument1, argument2, argument3);

//update enemies path finding
enemy_update_paths();
