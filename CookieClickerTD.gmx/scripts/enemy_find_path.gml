///enemy_find_path()
//finds path to king cookie
if (distance_to_object(obj_king_cookie) > 32)
{
    if(is_flying)
    {
        //init an empty path
        var new_path = path_add();
        
        //find path from enemy to king cookie and assign it to new_path
        var sucseed = mp_linear_path_object(new_path, obj_king_cookie.x, obj_king_cookie.y, movement_speed, noone);
        
        //make enemy follow new_path if pathfinding sucseeded
        if (sucseed)
        {
            path_start(new_path, movement_speed, 0, true);
        }
    }
    else
    {
        //init an empty path
        var new_path = path_add();
        
        //find path from enemy to king cookie and assign it to new_path
        var sucseed = mp_grid_path(global.block_grid, new_path, x, y, obj_king_cookie.x, obj_king_cookie.y, true);
        
        path_set_kind(new_path, 1);
        
        //make enemy follow new_path if pathfinding sucseeded
        if (sucseed)
        {
            path_start(new_path, movement_speed, 0, true);
        }
    }
}
else
{
    in_circle = true
    var new_path = path_circle
    path_rotate(0,image_angle)
    path_start(path_circle,movement_speed,0,false)
}
