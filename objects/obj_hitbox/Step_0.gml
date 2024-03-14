if(target != noone){
	x = target.x;
	y = target.y;
	image_index = target.image_index;
	if(target.hitbox_img != noone){
		sprite_index = target.hitbox_img;
		mask_index = target.hitbox_img;
	}
	for(var i=0;i<array_length(target.atk_states);i++){
		if(target.atk_states[i] == target.state){
			break;	
		}
			else if(i >= array_length(target.atk_states)-1 || i+1 == undefined){
				instance_destroy();
			}
	}
}