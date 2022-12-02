for(i=0; i<ds_list_size(foundList); i++;){
	with( ds_list_find_value(foundList,i) ){ 
		instance_destroy(); 
	}
}