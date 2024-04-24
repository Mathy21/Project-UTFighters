draw_self();
draw_text(x,y-sprite_height,state);
draw_text(x+sprite_width/2,y-sprite_height,spc_state);
if(can_draw_hb)
	draw_sprite(mask_index,image_index,x,y);

draw_text(x,y-(sprite_height+32),controller.state);
draw_text(x,y-(sprite_height+64),combo_timer);
draw_text(x+sprite_width,y-sprite_height/2,key.c_right);
draw_text(x+sprite_width+10,y-sprite_height/2,key.c_up);
draw_text(x+sprite_width+20,y-sprite_height/2,key.c_left);
draw_text(x+sprite_width+30,y-sprite_height/2,key.c_down);
