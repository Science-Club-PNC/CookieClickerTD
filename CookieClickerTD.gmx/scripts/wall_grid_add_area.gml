///wall_grid_add_area(left, top, right, bottom)
//adds a wall to the wall grid

//add wall to the wall_grid
mp_grid_add_rectangle(global.wall_grid, argument0, argument1, argument2, argument3);

//update enemies path finding
enemy_update_paths();
