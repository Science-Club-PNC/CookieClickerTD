///tower_get_target()
//find and choose a target to shoot according to the selected target priority

var target = noone;

if (target_priority == 0)
{
    //target priority: nearest to king
    var bestscore = 0;
    with (obj_enemy)
    {
        if point_distance(x,y,other.center_x,other.center_y)<other.hit_range
        {
            var newscore = path_get_length(path_index)-path_position*path_get_length(path_index);
            if (target == noone or newscore < bestscore)
            {
                bestscore = newscore;
                target = id;
            }
        }
    }
} else if (target_priority == 1)
{
    var lowest_health = 0;
    with (obj_enemy)
    {
        if point_distance(x,y,other.center_x,other.center_y)<other.hit_range
        {
            if (target == noone or hitpoints < lowest_health)
            {
                lowest_health = hitpoints;
                target = id;
            }
        }
    }
    //target priority: lowest health

} else if (target_priority == 2)
{
    var highest_health = 0;
    with (obj_enemy)
    {
        if point_distance(x,y,other.center_x,other.center_y)<other.hit_range
        {
            if (target == noone or hitpoints > highest_health)
            {
                highest_health = hitpoints;
                target = id;
            }
        }
    }
    
    //target priority: highest health

} else if (target_priority == 3)
{
    var lowest_armor = 0;
    with (obj_enemy)
    {
        if point_distance(x,y,other.center_x,other.center_y)<other.hit_range
        {
            if (target == noone or armor_level < lowest_armor)
            {
                lowest_armor = armor_level;
                target = id;
            }
        }
    }
    
    //target priority: lowest armor

} else if (target_priority == 4)
{
    var higest_armor = 0;
    with (obj_enemy)
    {
        if point_distance(x,y,other.center_x,other.center_y)<other.hit_range
        {
            if (target == noone or armor_level > highest_armor)
            {
                highest_armor = armor_level;
                target = id;
            }
        }
    }
     
            //target priority: highest armor

} else if (target_priority == 5)
{
    //target priority: strongest attack
    //todo: add selecting code
} else if (target_priority == 6)
{
    //target priority: group
    //todo: add selecting code
} else if (target_priority == 7)
{
    //target priority: ground
    //todo: add selecting code
} else if (target_priority == 8)
{
    //target priority: flying
    //todo: add selecting code
}

return target
