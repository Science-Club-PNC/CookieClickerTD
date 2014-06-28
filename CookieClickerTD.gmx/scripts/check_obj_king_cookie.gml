//This script checks if you release the left key outside the king cookie

if (obj_king_cookie.clicked)
{
    if (!(mouse_x < obj_king_cookie.x + 64 && mouse_x > obj_king_cookie.x - 64 && mouse_y > obj_king_cookie.y - 64 && mouse_y < obj_king_cookie.y + 64))
    {
        return true
    }
    else
    {
        return false
    }
}
else 
{
    return false
}
