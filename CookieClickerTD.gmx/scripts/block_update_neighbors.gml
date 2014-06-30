///block_update_neighbors()
//
for (var xpos = -1; xpos <= 1; xpos++)
{
    for (var ypos = -1; ypos <= 1; ypos++)
    {
        with(instance_position(x + xpos*tile_size, y + ypos*tile_size, obj_block))
        {
            block_update_sprite(other.id)
        }
    }
}
