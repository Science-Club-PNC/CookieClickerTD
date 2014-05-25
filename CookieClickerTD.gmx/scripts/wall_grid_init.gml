///wall_grid_init()
//inits the wall grid

global.wall_grid = mp_grid_create(0, 0, room_width/tile_size, room_height/tile_size, tile_size, tile_size);

with(obj_wall)
{
    wall_grid_add()
}
