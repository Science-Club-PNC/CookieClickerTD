///tower_shoot(target)
//creates a bullet that seeks out it's target

//create bullet at position of the tower
with (instance_create(center_x, center_y, obj_bullet))
{
    //set target
    target = argument0
    
    //set origin tower
    tower = other.id;
    
    //temp speed assingment
    bullet_speed = 10;
    
    //todo: load stats from tower
}
