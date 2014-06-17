///tower_stats_update()
//updates the stats of the tower according to it's type, class and size.

//Todo: add type/class sprite loading

//load type stats file 
switch (tower_type)
{
    case 0:
    ini_open(working_directory + "tower_stats\melee_stats.ini");
    break;

    case 1:
    ini_open(working_directory + "tower_stats\ranged_stats.ini");
    break;
}
var class = string(tower_class);

upgrades = string_split(ini_read_string(class, "upgrades", ""), "|");

hit_damage = ini_read_real(class, "hit_damage", 0);
hit_range = ini_read_real(class, "hit_range", 0);
hit_speed = ini_read_real(class, "hit_speed", 0);

max_hitpoints = ini_read_real(class, "max_hitpoints", 0);
armor_level = ini_read_real(class, "armor_level", 0);

can_target_ground = ini_read_real(class, "can_target_ground", 0);
can_target_air = ini_read_real(class, "can_target_air", 0);

splash_range = ini_read_real(class, "splash_range", 0);
splash_rolloff = ini_read_real(class, "splash_rolloff", 0);

ini_close();
