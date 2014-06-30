///block_grid_remove()
//removes a block from the block grid

//add block to the block_grid
mp_grid_clear_rectangle(global.block_grid, bbox_left, bbox_top, bbox_right, bbox_bottom);

//update enemies path finding
enemy_update_paths();
