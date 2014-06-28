///enemy_wave_create(wave_num)
//creates a randomized wave and returns it

var wave_num = argument0;
var wave_power = 100*wave_num^1.2;

//reminder: subwaves aren't freed anywhere in this script. they should be freed in enemy_wave_destroy
var subwaves = ds_list_create();
var subwave_amount = round(sqrt(wave_num)*random_range(0.8, 1.2));

var type_chances;

type_chances[0] = 4; //normal
type_chances[1] = 2; //swarm
type_chances[2] = 2; //heavy
type_chances[3] = 1.5; //flying
type_chances[4] = 0.2; //boss

for (var cur_subwave = 0; cur_subwave < subwave_amount; cur_subwave++)
{
    //init subwave map
    //reminder: subwave isn't freed anywhere in this script. should be freed in enemy_wave_destroy
    var subwave = ds_map_create();
    
    //take some of the wave power to spend in the this subwave
    var subwave_power;
    if (cur_subwave + 1 < subwave_amount)
    {
        //take a somewhat random peice of the wave power
        subwave_power = wave_power/(subwave_amount - cur_subwave)*random_range(0.8, 1.2);
        wave_power -= subwave_power;
    }
    else
    {
        //take all the power left in the wave
        subwave_power = wave_power
        wave_power = 0; //note: line might be a bit unesesary...
    }
    
    //choose subwave enemy type
    var subwave_type;
    {
        //get the total of type chances
        var type_chances_total = 0;
        for (var i = 0; i <= 4; i++)
        {
            type_chances_total += type_chances[i];
        }
        
        //pick a chance
        var type_choice_num = random(type_chances_total);
        
        //determine what enemy type the chance is
        for (var i = 0; i <= 4; i++)
        {
            type_choice_num -= type_chances[i];
            if (type_choice_num < 0)
            {
                subwave_type = i;
                break;
            }
        }
        
        //make the chosen enemy type less likely to be picked in futher subwaves inside this wave
        type_chances[subwave_type] /= 2;
    }

    //choose subwave enemy amount
    var subwave_amount
    
    switch (subwave_type)
    {
        case 0: //normal
        subwave_amount = round(15*random_range(0.5, 1.5));
        break;
        
        case 1: //swarm
        subwave_amount = round(35*random_range(0.5, 1.5));
        break;
        
        case 2: //heavy
        subwave_amount = round(6*random_range(0.5, 1.5));
        break;
        
        case 3: //flying
        subwave_amount = round(10*random_range(0.5, 1.5));
        break;
        
        case 4: //boss
        subwave_amount = 1;
        break;
    }

    //todo: add special chooser
    
    //calc enemy power
    //todo: add special power multiplier
    var enemy_power = subwave_power/subwave_amount;
    
    //determine enemy stats
    //todo: balance stats
    var enemy_hitpoints, enemy_armor, enemy_speed;
    {
        //divide enemy power to enemy stats
        switch (subwave_type)
        {
            case 0: //normal
            enemy_hitpoints = random_range(2,3);
            enemy_armor = random_range(0.5,1.5);
            enemy_speed = random_range(0.7,1.3);
            break;
            
            case 1: //swarm
            enemy_hitpoints = random_range(2,3);
            enemy_armor = random_range(0.5,1);
            enemy_speed = random_range(1,1.5);
            break;
            
            case 2: //heavy
            enemy_hitpoints = random_range(2,3);
            enemy_armor = random_range(0.5,1.7);
            enemy_speed = random_range(0.5,1);
            break;
            
            case 3: //flying
            enemy_hitpoints = random_range(2,3);
            enemy_armor = random_range(0.3,1);
            enemy_speed = random_range(0.6,1.6);
            break;
            
            case 4: //boss
            enemy_hitpoints = random_range(2,3);
            enemy_armor = random_range(0.5,1.5);
            enemy_speed = random_range(0.2,0.4);
            break;
        }
        
        //review enemy stats division
        var enemy_division_total = enemy_hitpoints*enemy_armor*enemy_speed;
        
        enemy_hitpoints /= enemy_division_total;
        enemy_armor /= enemy_division_total;
        enemy_speed /= enemy_division_total;
        
        //set to actual stats
        enemy_hitpoints = round(10*enemy_hitpoints*enemy_power);
        enemy_armor = round(0.1*enemy_armor*enemy_power);
        enemy_speed = 2*enemy_speed;
    }
    
    //todo: determine some visual stats
    
    //save stats in subwave map
    subwave[?'subwave_type'] = subwave_type;
    subwave[?'subwave_amount'] = subwave_amount;
    
    subwave[?'enemy_hitpoints'] = enemy_hitpoints;
    subwave[?'enemy_armor'] = enemy_armor;
    subwave[?'enemy_speed'] = enemy_speed;
    
    ds_list_add(subwaves, subwave);
}

return subwaves;

