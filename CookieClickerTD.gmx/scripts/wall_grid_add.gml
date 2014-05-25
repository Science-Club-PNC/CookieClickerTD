///wall_grid_add()
//adds a wall to the wall grid

var base_htile = x/tile_size;
var base_vtile = y/tile_size;

var wall_tile_width = sprite_width*image_xscale/tile_size;
var wall_tile_height = sprite_height*image_yscale/tile_size;

for (var cur_htile = 0; cur_htile < wall_tile_width; cur_htile += 1)
{
    for (var cur_htile = 0; cur_htile < wall_tile_width; cur_htile += 1)
    {
        mp_grid_add_cell(global.wall_grid, base_htile + cur_htile, base_vtile + cur_vtile);
    }
}
