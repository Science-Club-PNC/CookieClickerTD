///enemy_stats_update(subwave)
//updates the stats of the tower according to it's type and level

var subwave = argument0

//todo: add type/level stats loading
enemy_type = subwave[?'subwave_type'];
    
max_hitpoints = subwave[?'enemy_hitpoints'];
armor_level = subwave[?'enemy_armor'];
movement_speed = subwave[?'enemy_speed'];

if (enemy_type == 3)
{
    is_flying = true
}

//todo: add type sprite loading

