///wall_grid_init()
//inits the wall grid

global.wall_grid = mp_grid_create(0, 0, room_width/tile_size, room_height/tile_size, tile_size, tile_size);

mp_grid_add_instances(global.wall_grid, obj_wall, false);
