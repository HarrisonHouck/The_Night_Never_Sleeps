/// @description Insert description here
// You can write your code in this editor
if(!collision_line(x,y,other.x,other.y,obj_wall,false,true)){
if(global.steathy=false){
if(!instance_exists(obj_detect)){
instance_create_layer(obj_player.x, obj_player.y, "instances", obj_detect)	
}
//detection stuff
instance_nearest(x, y, obj_guard).state="fighting"
if(instance_exists(obj_detect)){
obj_detect.x=obj_player.x
obj_detect.y=obj_player.y
}
}
}

