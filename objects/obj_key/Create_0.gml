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