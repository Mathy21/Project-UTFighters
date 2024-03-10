// Main
target = noone;
input_p1 = {
	up : ord("W"),
	left : ord("A"),
	down : ord("S"),
	right : ord("D")
}	

input_p2 = {
	up : vk_numpad8,
	left : vk_numpad4,
	down : vk_numpad5,
	right : vk_numpad6
}

up = 0;
left = 0;
down = 0;
right = 0;
no_key = false;

set_keys = function(_struct){
	up = keyboard_check(_struct.up);
	left = keyboard_check(_struct.left);
	down = keyboard_check(_struct.down);
	right = keyboard_check(_struct.right);
	
	if(!up && !left && !down && !right)
		no_key = true;
	else
		no_key = false;
}	