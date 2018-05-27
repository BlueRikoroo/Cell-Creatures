/// @description 
// 


//Collisions with Other Cells
with(par_cell){
	var pdist = point_distance(x,y,other.x,other.y)
	var pdir = point_direction(x,y,other.x,other.y)
	var coldis = radius+other.radius
	if false{//pdist < coldis{
		hspeed -= lengthdir_x(pdist,pdir)*repelforce*(1+coldis-pdist)*other.radius/radius
		vspeed -= lengthdir_y(pdist,pdir)*repelforce*(1+coldis-pdist)*other.radius/radius
	}
}
