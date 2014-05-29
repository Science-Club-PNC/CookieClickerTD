///wall_grid_remove()
//removes a wall from the wall grid

//add wall to the wall_grid
mp_grid_clear_rectangle(global.wall_grid, bbox_left, bbox_top, bbox_right, bbox_bottom);

//update enemies path finding
enemy_update_paths();
