//Function to check if there is enough money
//It can take money off too
a = argument0
b = argument1
c = obj_possesion_controller.money
if(c >= a){
return true
if(b){
obj_possesion_controller.money -= a
}

}
else{
return false
}
