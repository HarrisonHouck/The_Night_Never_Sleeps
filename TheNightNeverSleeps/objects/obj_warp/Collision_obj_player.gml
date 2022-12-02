/// @description Insert description here
// You can write your code in this editor
if(sprite_width<sprite_height){
if(obj_player.x<=bbox_left){
global.ToY=obj_player.y
global.ToX=32
warp=true
}
else{
global.ToY=obj_player.y
global.ToX=room_width-32	
warp=true
}
}
else{
if(obj_player.y<=bbox_top){
global.ToX=obj_player.x
global.ToY=32
warp=true
}
else{
global.ToX=obj_player.x
global.ToY=room_height-32
warp=true
}
}