function player_change_state(_set_idle){
	if(key.down){
		state = PLAYER_STATE.CROUCH;
	}
	if(key.right || key.left){
		state = PLAYER_STATE.MOVE;
	}
	if(_set_idle && key.no_key){
		state = PLAYER_STATE.IDLE;	
	}
}
function player_base_state(){
	hspd = 0;
	vspd = 0;
	player_change_state(true);	
}
function player_idle_state(){
	animation_start(image_array[0,0],image_array[0,1]);
	player_change_state(false);
}
function player_move_state(){
	if(key.right || key.left){
		var _dir = point_direction(0,0,(key.right-key.left),(key.down-key.up));	
		hspd = lengthdir_x(spd,_dir);
		if(hspd < 0){
			animation_start(image_array[1,0],image_array[1,1]);
		}
		if(hspd > 0){
			animation_start(image_array[1,2],image_array[1,3]);	
		}
	}
	else{
		state = PLAYER_STATE.BASE;	
	}
}
function player_crouch_state(){
	
}

