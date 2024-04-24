function var_control_timer(_value,_var){
	if(_value > 0){
		_value --;
	}
	if(_value <= 0){
		_value = 0;
		_var = false;
	}
	show_debug_message("Time: "+ string(_value));
}	