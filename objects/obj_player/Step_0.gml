vspd += GRAV;

var _ground_col = place_meeting(x,y+sign(vspd),par_collision);
if(key.up && _ground_col){
	vspd = -5;	
}