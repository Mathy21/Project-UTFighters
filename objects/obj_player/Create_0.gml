// Main
player_num = 0;
// Image
image_array = []; // <Put a self character image array here>
actual_image = 0;
// Movement
spd = 0;
hspd = 0;
vspd = 0;
max_vspd = 5;
spc_state_array = ["none","on_air","downed"];
spc_state = "";
// Inputs
// Instance self key object
key = instance_create_layer(0,0,"Main",obj_key);
key.target = id;
// State Machine
enum PLAYER_STATE {
	BASE,
	IDLE,
	MOVE,
	CROUCH,
	WEAK_ATK,
	STRONG_ATK,
	WEAK_KICK,
	STRONG_KICK
}	
state = PLAYER_STATE.BASE;
state_array[PLAYER_STATE.BASE] = player_base_state;
state_array[PLAYER_STATE.IDLE] = player_idle_state;
state_array[PLAYER_STATE.MOVE] = player_move_state;
state_array[PLAYER_STATE.CROUCH] = player_crouch_state;
// Gravity & Collision
gravity_and_collision = function(){
	repeat(abs(vspd)){
		var ground_col = place_meeting(x,y+sign(vspd),par_collision);
		if(ground_col){
			vspd = 0;
			break;
		}
		else{
			y += sign(vspd);	
		}
	}
}	