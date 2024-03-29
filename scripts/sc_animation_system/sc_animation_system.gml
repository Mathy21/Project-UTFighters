function animation_start(_sprite,_hurtbox){
	if(sprite_index != _sprite){
		image_index = 0;
		sprite_index = _sprite;
		mask_index = _hurtbox;
		if(argument_count > 2){
			hitbox_img = argument[2];	
		}
	}
}

function animation_end(){
	var _sprite, _index;
	_sprite = sprite_index;
	_index = image_index;
	
	var _speed, _type;
	_speed = sprite_get_speed(_sprite)*image_speed;
	_type = sprite_get_speed_type(_sprite);
	if(_type == spritespeed_framespersecond){
		_speed /= room_speed;
	}
	
	return _index + _speed >= sprite_get_number(_sprite);
}