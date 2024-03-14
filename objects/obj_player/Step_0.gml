vspd += GRAV;

var _ground_col = place_meeting(x,y+sign(vspd),par_collision);
if(key.up && _ground_col){
	vspd = -5;	
}

if(!_ground_col){
	spc_state = spc_state_array[1];	
	jumped = true;
}

if(_ground_col && jumped){
	state = PLAYER_STATE.BASE;
	jumped = false;
}