//We use the phy_position_x/y variables instead of the normal x/y variables as we are working 
//with physics objects, which means that the traditional variables may not be accurate anymore.
if phy_position_x < 0 phy_position_x += room_width;
if phy_position_x > room_width phy_position_x -= room_width;

if phy_position_y < 0 phy_position_y += room_height;
if phy_position_y > room_height phy_position_y -= room_height;


