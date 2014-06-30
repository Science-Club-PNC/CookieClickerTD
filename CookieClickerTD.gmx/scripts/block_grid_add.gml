///block_grid_add()
//adds a block to the block grid

//add block to the block_grid
mp_grid_add_instances(global.block_grid, self, false);

//update enemies path finding
enemy_update_paths();
