#region CONTROLES

key_left = keyboard_check(vk_left)
key_right = keyboard_check(vk_right)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)

#endregion

#region MOVIMENTAÇÃO

var move = key_right - key_left
var move2 = key_down - key_up


global.hspd = move * spd;
global.vspd = move2 * spd;

if (global.hspd != 0) image_xscale = sign(global.hspd)
if (global.vspd != 0) image_yscale = sign(global.vspd)



// COLISÃO HORIZONTAL
if place_meeting(x+global.hspd, y, obj_wall) {
	while (!place_meeting(x + sign (global.hspd), y, obj_wall))
	{
		x = x + sign(global.hspd);
	}
	global.hspd = 0;
}
x = x + global.hspd;

if place_meeting(x, y+global.vspd, obj_wall) {
	while (!place_meeting(x,y + sign (global.vspd), obj_wall))
	{
		y = y + sign(global.vspd);
	}
	global.vspd = 0;
}
y = y + global.vspd;

#endregion

#region COLISÃO

#endregion