// Get player target
target = noone;
enum CONTROL_STATE{
	NEUTRAL,
	UP,
	LEFT,
	DOWN,
	RIGHT,
	TOP_RIGHT,
	TOP_LEFT,
	BOTTOM_RIGHT,
	BOTTOM_LEFT
}
state = CONTROL_STATE.NEUTRAL;
controller_system = function(){
	if(target.key.no_key){
		state = CONTROL_STATE.NEUTRAL;
	}	
	if(target.key.up){
		state = CONTROL_STATE.UP;	
	}
	if(target.key.down){
		state = CONTROL_STATE.DOWN;	
	}
	if(target.key.left){
		state = CONTROL_STATE.LEFT;	
	}
	if(target.key.right){
		state = CONTROL_STATE.RIGHT;	
	}
	if(target.key.up && target.key.right){
		state = CONTROL_STATE.TOP_RIGHT;	
	}
}