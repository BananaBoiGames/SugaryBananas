function scr_player_door() //scr_player_door
{
    hsp = 0;
    mach2 = 0;
    jumpAnim = 1;
    dashAnim = 1;
    landAnim = 0;
    moveAnim = 1;
    stopAnim = 1;
    crouchslideAnim = 1;
    crouchAnim = 1;
    machhitAnim = 0;
    if (sprite_index != spr_player_downpizzabox && sprite_index != spr_player_uppizzabox)
	{
        sprite_index = spr_lookdoor;
		var obj = instance_place(x, y, obj_door)
		if obj == -4
			obj = instance_place(x, y, obj_exitgate)
		if obj != -4
			x = approach(x, instance_nearest(x, y, obj_door).x + 50, 3);
	}
    if (floor(image_index) == (image_number - 1))
        image_speed = 0;
    if (floor(image_index) == (image_number - 1) && (!instance_exists(obj_fadeout)) && (sprite_index == spr_player_downpizzabox || sprite_index == spr_player_uppizzabox))
        instance_create(x, y, obj_fadeout);
}

