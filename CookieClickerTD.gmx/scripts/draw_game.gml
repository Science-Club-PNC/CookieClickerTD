///draw_game()
//draws the game in the current view

draw_background_tiled(back_grass, 0, 0);

with(obj_king_cookie)
{
    draw_self();
}
with(obj_enemy)
{
    if (!is_flying)
    {
        draw_self();
    }
}
with(obj_wall)
{
    draw_self();
}
with(obj_tower)
{
    draw_sprite_ext(spr_tower_turret, 0, center_x, center_y, 1, 1, target_angle, c_white, 1);
}
with(obj_bullet)
{
    draw_self();
}
with(obj_enemy)
{
    if (is_flying)
    {
        draw_self();
    }
}
draw_background_tiled_ext(back_grid, 0, 0, tile_size/background_get_width(back_grid),tile_size/background_get_height(back_grid), -1, 1);
