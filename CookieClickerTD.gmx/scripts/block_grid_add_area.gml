///block_grid_add_area(left, top, right, bottom)
//adds a block to the block grid

//add block to the block_grid
mp_grid_add_rectangle(global.block_grid, argument0, argument1, argument2, argument3);

//update enemies path finding
enemy_update_paths();
