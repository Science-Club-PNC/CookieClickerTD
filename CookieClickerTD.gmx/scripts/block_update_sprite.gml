///block_update_sprite(trigger)
//updates the sprite of a block according to neighbor blocks present
var trigger = argument0;

if (object_index != obj_tower)
{
    var found_top = position_meeting(x, y - tile_size, obj_block);
    var found_right = position_meeting(x + tile_size, y, obj_block);
    var found_bottom = position_meeting(x, y + tile_size, obj_block);
    var found_left = position_meeting(x - tile_size, y, obj_block);
    
    //var found_top_right = (found_top and found_right) and position_meeting(x + tile_size, y - tile_size, obj_block);
    switch (object_index)
    {
        case obj_wall:

        //set horizontal seam
        image_index = found_left + 2*found_right;
        
        //set top (diagonal) seam
        if (found_top)
        {
            seam_top = (found_left and position_meeting(x - tile_size, y - tile_size, obj_block)) + 2*(found_right and position_meeting(x + tile_size, y - tile_size, obj_block));
        }
        else
        {
            seam_top = -1;
        }
        
        //set bottom (diagonal) seam
        if (found_bottom)
        {
            seam_bottom = (found_left and position_meeting(x - tile_size, y + tile_size, obj_block)) + 2*(found_right and position_meeting(x + tile_size, y + tile_size, obj_block));
        }
        else
        {
            seam_bottom = -1;
        }

        break;
    }
}

