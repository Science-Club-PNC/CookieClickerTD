///enemy_find_path()
//finds path to king cookie

var new_path = path_add()
mp_grid_path(global.wall_grid, new_path, x, y, obj_king_cookie.x, obj_king_cookie.y, true);
path_start(new_path, movement_speed, 0, true)
