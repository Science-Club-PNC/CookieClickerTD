///enemy_wave_destroy(wave)
//destroys wave to prevent memory leaks

var wave = argument0;

if ds_exists(wave, ds_type_list)
{
    var size = ds_list_size(wave);
    
    for (var i = 0; i < size; i++)
    {
        if ds_exists(wave[| i], ds_type_map)
        {
            ds_map_destroy(wave[| i]);
        }
    }
    
    ds_list_destroy(wave);
}
