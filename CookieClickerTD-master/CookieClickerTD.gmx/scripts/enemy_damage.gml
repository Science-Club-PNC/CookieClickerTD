///enemy_damage(damage)
//calcs and sets the new hitpoints

//check if damage is larger then 0 (otherwise you simply don't deal any damage
if (argument0 > 0)
{
    //calc actual damage done by blocking damage and minimum capping at 1
    var dealt_damage = max(1, argument0 - armor_level)
    
    //deal damage
    hitpoints = hitpoints - dealt_damage;
    
    //if the enemy is dead destroy it
    if (hitpoints <= 0)
    {
        instance_destroy();
    }
}
