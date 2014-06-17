///enemy_update_paths()
//updates all enemies' paths

//loop through all enemies
with(obj_enemy)
{
    //check if enemy is already following a path
    if path_exists(path_index)
    {
        //find new path for the enemy to follow
        enemy_find_path();
    }
}
