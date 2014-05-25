///src_create_tower(x, y, type, class, size)
//creates a tower and returns it

with(instance_create(argument0*tile_size, argument1*tile_size, obj_tower))
{
    tower_type = argument2;
    tower_class = argument3;
    tower_size = argument4;
    
    image_xscale = tower_size*tile_size/sprite_width;
    image_yscale = tower_size*tile_size/sprite_height;
    
    wall_grid_add();
    
    tower_stats_update();
    return self
}
