if(target != noone){
	switch(target.player_num){
		case 0:
			set_keys(input_p1);
			break;
		case 1:
			set_keys(input_p2);
			break;	
	}
}

if(!instance_exists(target)){
	instance_destroy(id,true);	
}