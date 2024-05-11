key_position_check();

#region Right
if(c_r_timer > 0){
	c_r_timer -= ceil(delta_time/1000000);	
}
if(c_r_timer <= 0 && c_right){
	c_right = false;
}
#endregion

#region Up
if(c_u_timer > 0){
	c_u_timer --;	
}
if(c_u_timer <= 0 && c_up){
	c_up = false;
}
#endregion

#region left
if(c_u_timer > 0){
	c_u_timer --;	
}
if(c_u_timer <= 0 && c_up){
	c_up = false;
}
#endregion