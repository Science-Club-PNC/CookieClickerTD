//This is a powerful script to check if a point is inside a rectangle
//rectangle_check_point(inside,wide,hight,centre_x,centre_y,point_x,point_y)

//Argument0 must be true or false
var inside = argument0
var wide = argument1/2
var height = argument2/2
var centre_x = argument3
var centre_y = argument4
var point_x = argument5
var point_y = argument6

if (inside)
{
    if (point_x < centre_x + wide && point_x > centre_x - wide && point_y > centre_y -height && point_y < centre_y + height)
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
    if (!(point_x < centre_x + wide && point_x > centre_x - wide && point_y > centre_y -height && point_y < centre_y + height))
    {
        return true
    }
    else
    {
        return false
    }
}
