///enemy_update_paths()
//updates all enemies' paths

with(obj_enemy)
{
    if path_exists(path_index)
    {
        enemy_find_path();
    }
}
