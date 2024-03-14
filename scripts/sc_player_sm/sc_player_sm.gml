function player_change_state(_set_idle){
	if(key.w_atk){
		state = PLAYER_STATE.WEAK_ATK;
	}	
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
	spc_state = "none";
	hspd = 0;
	player_change_state(true);	
}
function player_idle_state(){
	animation_start(image_array[state,0],image_array[state,1]);
	can_draw_hb = true;
	player_change_state(false);
}
function player_move_state(){
	if(key.right || key.left){
		var _dir = point_direction(0,0,(key.right-key.left),(key.down-key.up));	
		hspd = lengthdir_x(spd,_dir);
		if(hspd < 0){
			hspd /=2;
			animation_start(image_array[state,0],image_array[state,1]);
			player_change_state(false);
		}
		if(hspd > 0){
			animation_start(image_array[state,2],image_array[state,3]);
			player_change_state(false);
		}
	}
	else{
		state = PLAYER_STATE.BASE;	
	}
}
function player_crouch_state(){
	spc_state = spc_state_array[3];
	animation_start(image_array[state,0],image_array[state,1]);
	if(!key.down){
		state = PLAYER_STATE.BASE;	
	}
}

function player_weak_atk_state(){
	if(hitbox == noone){
		hitbox = instance_create_layer(x,y,"Main",obj_hitbox);
		hitbox.target = id;
	}
	if(key.down){
	}
		else{
			animation_start(image_array[state,0],image_array[state,1],image_array[state,2]);
		}
	if(animation_end()){
		hitbox = noone;
		if(spc_state = "crouched"){
			state = PLAYER_STATE.CROUCH;	
		}
			else {
				state = PLAYER_STATE.BASE;	
			}
	}
}