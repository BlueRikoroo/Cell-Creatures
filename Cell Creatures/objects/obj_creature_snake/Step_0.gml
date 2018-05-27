/// @description 
// 

event_inherited()

var s = 2
if keyboard_check(vk_up)
	y-=s
if keyboard_check(vk_left)
	x-=s
if keyboard_check(vk_right)
	x+=s
if keyboard_check(vk_down)
	y+=s
if keyboard_check(ord("R"))
	rotation+=2
	
if keyboard_check_pressed(ord("E"))
	creature_change_size(size*2)
else if keyboard_check_pressed(ord("W"))
	creature_change_size(size/2)