//money_checker(price,edit)

//Function to check if there is enough money

//It can take money off too

var price = argument0; //The price of something

var edit = argument1; //The option to edit money

var control_money = obj_money_controller.money;

if (control_money >= price)
    {
    return true;
    if (edit)
        {
        obj_money_controller.money -= money;
        }
    }
else 
    {
    return false;
    }
