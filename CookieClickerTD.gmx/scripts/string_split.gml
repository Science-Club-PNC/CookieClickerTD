///string_split(str, delimeter)
//Creates a list from a string

var str = argument0;
var delimeter = argument1;
var pos = 0;
var array, char, i;
array[0] = "";

show_debug_message("Parsing string: " + str);

for (i = 0; i < string_length(str); i++;)
{
    char = string_char_at(str, i);
    if (char = delimeter)
    {
        show_debug_message("Finished element " + string(pos) + ": " + array[pos]);
        pos++;
        array[pos] = "";
    } else {
        array[pos] += char;
    }
}
show_debug_message("Finished element " + string(pos) + ": " + array[pos]);
