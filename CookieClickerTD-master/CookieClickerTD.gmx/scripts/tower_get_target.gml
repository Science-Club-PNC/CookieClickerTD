///tower_get_target()
//find and choose a target to shoot according to the selected target priority

var target = noone;
var bestscore = 0;

with (obj_enemy)
{
    if ((point_distance(x,y,other.center_x,other.center_y) < other.hit_range) and (((!is_flying) and other.can_target_ground) or (is_flying and other.can_target_air)))
    {
        switch (other.target_priority)
        {
            case 0:
            //target priority: nearest to king
            var newscore = path_get_length(path_index) - path_position*path_get_length(path_index);
            if (target == noone or newscore < bestscore)
            {
                bestscore = newscore;
                target = id;
            }
            break;
            
            case 1:
            //target priority: lowest health
            if (target == noone or hitpoints < bestscore)
            {
                bestscore = hitpoints;
                target = id;
            }
            break;
            
            case 2:
            //target priority: highest health
            if (target == noone or hitpoints > bestscore)
            {
                bestscore = hitpoints;
                target = id;
            }
            break;
            
            case 3:
            //target priority: lowest armor
            if (target == noone or armor_level < bestscore)
            {
                bestscore = armor_level;
                target = id;
            }
            break;
            
            case 4:
            //target priority: highest armor
            if (target == noone or armor_level > bestscore)
            {
                bestscore = armor_level;
                target = id;
            }
            break;

            case 5:
            //target priority: strongest attack
            //todo: add selecting code
            break;
            
            case 6:
            //target priority: group
            //todo: add selecting code
            break;
            
            case 7:
            //target priority: ground
            //todo: add selecting code
            break;
            
            case 8:
            //target priority: flying
            //todo: add selecting code
            break;
        }
    }
}

return target;
