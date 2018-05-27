/// @description 
// 

event_inherited()

var pdist = point_distance(x,y,mouse_x,mouse_y)
var pdir = point_direction(x,y,mouse_x,mouse_y)

hspeed += cos(degtorad(pdir))*min(1000/pdist,1.1)
vspeed += -sin(degtorad(pdir))*min(1000/pdist,1.1)