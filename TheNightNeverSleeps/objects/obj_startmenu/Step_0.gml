//get inputs
up_key = keyboard_check_pressed(ord("W"))
down_key = keyboard_check_pressed(ord("S"))
accept_key = keyboard_check_pressed(vk_space)

//move through menu
pos += down_key - up_key
if(pos >= op_length) {
	pos = 0
}
if(pos<0){
	pos=op_length-1
}

//using options
if(accept_key){
	switch(pos){
		//start
		case 0: 
		room_goto(4)
		break;
	
		//story
		case 1:
		room_goto(1)
		break;
		
		//how to 
		case 2: 
		room_goto(2)
		break;
		
		//credits
		case 3: 
		room_goto(3)
		break;
		
		//quit
		case 4: 
		game_end()
		break;
	}
}