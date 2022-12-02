if(instance_exists(obj_player)){
	//draw_self()
	draw_set_font(fnt_text)
	draw_set_halign(fa_left)
	draw_text_transformed(8, 16, "Alert!",1.75,1.75,0)
	draw_healthbar(8, 40, 160, 70, global.alert, c_black, c_red, c_red, 0, true, true)
	draw_healthbar(8, 40, 160, 70, global.alert, c_black, c_red, c_red, 0, true, true)
	draw_text_transformed(170, 16, "Clues: " + string(global.clues),1.25,1.25,0)
	for(i =0; i< global.lives; i++){
		draw_sprite(spr_lives, 0, (24 +40 *i), 92)
	}
}
