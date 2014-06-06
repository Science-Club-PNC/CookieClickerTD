///string_split(str, delimeter)
//Creates a list from a string

var str = argument0;
var delimeter = argument1;

var pos = 0;
var array, char, i;
array[0] = "";

for (i = 1; i <= string_length(str); i++)
{
    char = string_char_at(str, i);
    if (char = delimeter)
    {
        pos++;
        array[pos] = "";
    } else {
        array[pos] += char;
    }
}

return array;
