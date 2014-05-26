///tower_shoot(target)
//creates a bullet that seeks out it's target

//create bullet at position of the tower
with (instance_create(x,y,obj_bullet))
{
    //set target
    target = argument0
    
    //temp speed assingment
    speed = 10;
    
    //todo: load stats from tower
}
