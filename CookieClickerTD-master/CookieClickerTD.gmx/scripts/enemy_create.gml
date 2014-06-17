///enemy_create(x, y, type, level)
//creates a enemy and returns it

//create enemy instance and target it
with(instance_create(argument0, argument1, obj_enemy))
{
    //assign base stats
    enemy_type = argument2;
    enemy_level = argument3;
    
    //assign other stats
    enemy_stats_update();
    
    //return the new instance
    return self
}
