///tower_create(x, y, type, class, size)
//creates a tower and returns it

var abs_x = argument0*tile_size;
var abs_y = argument1*tile_size;

//prevent player from placing multiple towers on the same place
if (collision_rectangle( abs_x, abs_y, abs_x + argument4*tile_size - 1, abs_y + argument4*tile_size - 1, obj_wall, false, false ))
{
    return noone;
}
//create tower instance and target it
with (instance_create(abs_x, abs_y, obj_tower))
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
