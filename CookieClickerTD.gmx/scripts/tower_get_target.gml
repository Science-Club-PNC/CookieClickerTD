///tower_get_target()
//find and choose a target to shoot according to the selected target priority

var target = noone;
var bestscore = 0;

var c_x = center_x;
var c_y = center_y;
var range = hit_range;
var sqr_range = sqr(hit_range);

var target_ground = can_target_ground;
var target_air = can_target_air;
var target_priority = self.target_priority;

with (obj_enemy)
{
    var can_hit;
    if (is_flying)
    {
        can_hit = target_air;
    }
    else
    {
        can_hit = target_ground;
    }
    
    if ((abs(x - c_x) > range) or (abs(y - c_y) > range))
    {
        continue;
    }
    
    if (can_hit and (sqr(x - c_x) + sqr(y - c_y)) < sqr_range)
    {
        switch (target_priority)
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
