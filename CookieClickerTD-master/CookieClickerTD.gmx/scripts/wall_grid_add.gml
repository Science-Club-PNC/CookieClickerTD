///wall_grid_add()
//adds a wall to the wall grid

//add wall to the wall_grid
mp_grid_add_instances(global.wall_grid, self, false);

//update enemies path finding
enemy_update_paths();
