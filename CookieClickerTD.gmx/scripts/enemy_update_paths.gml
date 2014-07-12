///enemy_update_paths()
//updates all enemies' paths

//loop through all enemies
with(obj_enemy)
{
    //Checks if the enemy is near the king
    if (distance_to_point(obj_king_cookie.x,obj_king_cookie.y)>90)
    {
        //check if enemy is already following a path
        if path_exists(path_index)
        {
            //find new path for the enemy to follow
            enemy_find_path();
        }
    }
}
