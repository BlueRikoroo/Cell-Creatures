/// @description 
// 

event_inherited()

var pdist = point_distance(x,y,mouse_x,mouse_y)
var pdir = point_direction(x,y,mouse_x,mouse_y)
if pdist < diameter{
	hspeed = lengthdir_x(pdist,pdir)
	vspeed = lengthdir_y(pdist,pdir)
}