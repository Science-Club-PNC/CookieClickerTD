///enemy_find_path()
//finds path to king cookie

//init an empty path
var new_path = path_add();

//find path from enemy to king cookie and assign it to new_path
var sucseed = mp_grid_path(global.wall_grid, new_path, x, y, obj_king_cookie.x, obj_king_cookie.y, true);

//make enemy follow new_path if pathfinding sucseeded
if (sucseed)
{
    path_start(new_path, movement_speed, 0, true);
}
