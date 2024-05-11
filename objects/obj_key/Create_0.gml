// Position control
c_right = false;
c_up = false;
c_left = false;
c_down = false;
c_timer_v = 120;
c_r_timer = 0;
c_u_timer = 0;
c_l_timer = 0;
c_d_timer = 0;
// Main
target = noone;
input_p1 = {
	up : vk_up,
	left : vk_left,
	down : vk_down,
	right : vk_right,
	w_atk : ord("A"),
	s_atk : ord("S"),
	w_kick : ord("Z"),
	s_kick : ord("X")
}	

input_p2 = {
	up : vk_numpad8,
	left : vk_numpad4,
	down : vk_numpad5,
	right : vk_numpad6,
	w_atk : ord("I"),
	s_atk : ord("O"),
	w_kick : ord("K"),
	s_kick : ord("L")
}

up = 0;
left = 0;
down = 0;
right = 0;
w_atk = 0;
s_atk = 0;
w_kick = 0;
s_kick = 0;
no_key = false;
set_keys = function(_struct){
	up = keyboard_check_pressed(_struct.up);
	left = keyboard_check(_struct.left);
	down = keyboard_check(_struct.down);
	right = keyboard_check(_struct.right);
	w_atk = keyboard_check_pressed(_struct.w_atk);
	s_atk = keyboard_check_pressed(_struct.s_atk);
	w_kick = keyboard_check_pressed(_struct.w_kick);
	s_kick = keyboard_check_pressed(_struct.s_kick);
	
	if(!up && !left && !down && !right && !w_atk && !s_atk && !w_kick && !s_kick)
		no_key = true;
	else
		no_key = false;
}	

key_position_check = function(){
	if(right){
		c_right = true;
		c_r_timer = c_timer_v;
	}
	if(up){
		c_up = true;
		c_u_timer = c_timer_v;
	}
	if(left){
		c_left = true;
		c_l_timer = c_timer_v;
	}
	if(down){
		c_down = true;
		c_d_timer = c_timer_v;
	}
}

var_timer = function(_timer,_var){
	if(_timer > 0){
		
	}	
}