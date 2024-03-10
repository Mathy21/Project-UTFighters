function animation_start(_sprite,_hitbox){
	if(sprite_index != _sprite){
		image_index = 0;
		sprite_index = _sprite;
		mask_index = _hitbox;
	}
}