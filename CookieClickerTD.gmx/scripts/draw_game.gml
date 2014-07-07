///draw_game()
//draws the game in the current view

//shader_set(sh_main);
draw_background_tiled_ext(back_ground, 0, 0, 0.25, 0.25, -1, 1);

if surface_exists(obj_draw_controller.corpse_surf)
{
    draw_surface(obj_draw_controller.corpse_surf, 0, 0);
}
if (obj_build_controller.enabled)
{
    draw_background_tiled_ext(back_grid, 0, 0, tile_size/background_get_width(back_grid),tile_size/background_get_height(back_grid), -1, 1);
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
    if (seam_top >= 0)
    {
        draw_sprite_ext(spr_wall_seam, seam_top, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha);
    }
    if (seam_bottom >= 0)
    {
        draw_sprite_ext(spr_wall_seam, seam_bottom, x, y + sprite_height - sprite_get_height(spr_wall_seam)*image_yscale, image_xscale, image_yscale, 0, image_blend, image_alpha);
    }
    draw_self();
}
with (obj_tower)
{
    draw_self();
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
with (obj_plusone)
{
    if (!(alpha <= 0)) {
        draw_set_alpha(alpha);
        draw_sprite(spr_plusone, 0, x, y);
        draw_set_alpha(1);
    } else {
        instance_destroy();
    }
}

//debug: draw marker for selection
with (obj_selection_controller.selection)
{
    draw_set_colour(c_blue);
    draw_set_alpha(0.6);
    
    switch (obj_selection_controller.selection_type)
    {
    case 1:
        draw_rectangle(x, y, x + tower_size*tile_size, y + tower_size*tile_size, false);
        break;
    case 2:
        draw_rectangle(x, y, x + tile_size, y + tile_size, false);
        break;
    case 4:
        draw_circle(x, y, 15, false);
        break;
    }
    
    draw_set_alpha(1);
}

//debug: draw enemy stats
if view_mouse_inside(view_game)
{
    draw_set_colour(c_white);
    draw_set_valign(fa_bottom);
    draw_set_font(font_debug);
    
    with (obj_enemy)
    {
        if point_in_circle(x, y, view_mouse_x(), view_mouse_y(), 60)
        {
            draw_text(x + 4, y + 4, 
                "Hitpoints: " + string(hitpoints) + "/" + string(max_hitpoints) +
                "#Armor: " + string(armor_level) + " | Speed: " + string(movement_speed) +
                "#Level: " + string(enemy_level) + " | Type: " + string(enemy_type));
        }
    }
    
    draw_set_valign(fa_top);
}
