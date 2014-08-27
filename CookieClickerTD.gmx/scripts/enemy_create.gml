///enemy_create(x, y, subwave)
//creates a enemy and returns it

//create enemy instance and target it
with(instance_create(argument0, argument1, obj_enemy))
{   
    //assign stats
    
    if ds_exists(argument2, ds_type_map)
    {
        enemy_stats_update(argument2);
    }
    //give enemy it's max amount of hit points
    hitpoints = max_hitpoints;
    
    //find initial path
    enemy_find_path();
    
    //return the new instance
    return id;
}