if(instance_exists(obj_player)){
	draw_set_halign(fa_left)
	draw_text(8, 8, "Detected")
	draw_healthbar(8, 32, 16, 40, global.detectvalue, c_black, c_red, c_red, 0, false, false)
	if(global.detect){
		global.detectvalue = 100
	}
	if(!global.detect){
		global.detectvalue = 0
	}
	draw_text(8, 48, "Clues Picked-Up: " + string(global.clues))
	draw_text(40, 40, "angle: " +string(global.angle))
}
