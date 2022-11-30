/// @description Insert description here
// You can write your code in this editor
if(other.x==bbox_left){
other.x=bbox_right+32	
}
if(other.x==bbox_right){
other.x=bbox_left-32	
}
if(other.y==bbox_top){
other.y=bbox_bottom+32	
}
if(other.y==bbox_bottom){
other.y=bbox_top-32	
}
room_goto(roomTo)