///src_create_tower(x, y, type, class, size)
//creates a tower and returns it

//create tower instance and target it
with(instance_create(argument0*tile_size, argument1*tile_size, obj_tower))
{
    //assign base stats
    tower_type = argument2;
    tower_class = argument3;
    tower_size = argument4;
    
    //resize tower to be the tower_size times a tile;
    image_xscale = tower_size*tile_size/sprite_width;
    image_yscale = tower_size*tile_size/sprite_height;
    
    //calcs and saves the center of the tower
    center_x = x + tower_size*tile_size/2
    center_y = y + tower_size*tile_size/2
    
    //add the tower to the wall grid for pathfinding
    wall_grid_add();
    
    //assign other stats
    tower_stats_update();
    
    //return the new instance
    return self
}
