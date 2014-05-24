///enemy_create(x, y, type, level)
//creates a enemy and returns it
with(instance_create(argument0, argument1, obj_enemy))
{
    enemy_type = argument2;
    enemy_level = argument3;
    enemy_stats_update();
    return self
}
