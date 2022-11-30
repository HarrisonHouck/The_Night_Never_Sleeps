/// @description Insert description here
// You can write your code in this editor
//try splitting the trapezoid into 4 triangles 

draw_set_color(c_white)
center_ang=point_direction(view_get_xport(0)+683,view_get_yport(0)+1384,centerX,centerY)


center_farX=centerX+lengthdir_x(room_width,center_ang)
center_farY=centerY+lengthdir_y(room_width,center_ang)
farLX=center_farX-sprite_width*xz_ratio/2
farRX=center_farX+sprite_width*xz_ratio/2
farBY=center_farY+sprite_height*yz_ratio/2
farTY=center_farY-sprite_height*yz_ratio/2
draw_line(obj_player.x,obj_player.y,centerX,centerY)
draw_line(centerX,centerY,center_farX,center_farY)
draw_line(Lx,Ty,farLX,farTY)
draw_line(Rx,Ty,farRX,farTY)
draw_line(Lx,By,farLX,farBY)
draw_line(Rx,By,farRX,farBY) 
draw_line(farLX,farTY,farRX,farTY)
draw_line(farLX,farTY,farLX,farBY)
draw_line(farRX,farTY,farRX,farBY)
draw_line(farLX,farBY,farRX,farBY)
draw_sprite_pos(spr_built_building,image_index,farLX,farBY,farRX,farBY,Rx,By,Lx,By,1)
