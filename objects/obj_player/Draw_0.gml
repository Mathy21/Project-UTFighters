draw_self();
draw_text(x,y-sprite_height,state);
draw_text(x+sprite_width/2,y-sprite_height,spc_state);
if(can_draw_hb)
	draw_sprite(mask_index,image_index,x,y);

draw_text(x,y-(sprite_height+32),controller.state);
