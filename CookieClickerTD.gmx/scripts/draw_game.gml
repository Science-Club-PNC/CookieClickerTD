///draw_game()
//draws the game in the current view

//shader_set(sh_main);

draw_background_tiled(back_grass, 0, 0);

if surface_exists(obj_draw_controller.corpse_surf)
{
    draw_surface(obj_draw_controller.corpse_surf, 0, 0);
}

with (obj_king_cookie)
{
    draw_self();
}
with (obj_enemy)
{
    if (!is_flying)
    {
        draw_self();
    }
}
with (obj_wall)
{
    draw_self();
}
with (obj_tower)
{
    draw_sprite_ext(spr_tower_turret, 0, center_x, center_y, 1, 1, target_angle, c_white, 1);
}
with (obj_bullet)
{
    draw_self();
}
with (obj_enemy)
{
    if (is_flying)
    {
        draw_self();
    }
}
draw_background_tiled_ext(back_grid, 0, 0, tile_size/background_get_width(back_grid),tile_size/background_get_height(back_grid), -1, 1);

//debug: draw enemy stats
if view_mouse_inside(view_game)
{
    draw_set_colour(c_white);
    draw_set_valign(fa_bottom);
    draw_set_font(font_debug);
    
    with (obj_enemy)
    {
        if point_in_circle(x, y, mouse_x, mouse_y, 60)
        {
            draw_text(x + 4, y + 4, 
                "Hitpoints: " + string(hitpoints) + "/" + string(max_hitpoints) +
                "#Armor: " + string(armor_level) + " | Speed: " + string(movement_speed) +
                "#Level: " + string(enemy_level) + " | Type: " + string(enemy_type));
        }
    }
    
    draw_set_valign(fa_top);
}
