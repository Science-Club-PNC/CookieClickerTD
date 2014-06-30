///block_grid_init()
//inits the block grid

//create an empty grid map spanning the whole room with tiles of the size tile_size by tile_size
global.block_grid = mp_grid_create(0, 0, room_width/tile_size, room_height/tile_size, tile_size, tile_size);
