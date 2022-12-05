for(i=0; i<ds_list_size(global.foundList); i++;){
	with( ds_list_find_value(global.foundList,i) ){ 
		instance_destroy(); 
	}
}