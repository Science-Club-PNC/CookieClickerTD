///block_grid_remove_area(left, top, right, bottom)
//removes a block from the block grid

//add block to the block_grid
mp_grid_clear_rectangle(global.block_grid, argument0, argument1, argument2, argument3);

//update enemies path finding
enemy_update_paths();
