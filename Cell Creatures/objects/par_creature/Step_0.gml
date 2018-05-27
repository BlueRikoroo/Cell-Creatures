/// @description 
// 
if is_array(cell_array){
	for (var i = array_height_2d(cell_array)-1;i >= 0; i--){
		with(cell_array[i,3]){
			var ox, oy, xpos, ypos;
			if other.cell_array[i,4]{
				//Connected Parental Movement
				ox = other.cell_array[i,5].x
				oy = other.cell_array[i,5].y
				xpos = other.cell_array[i,6]+ox
				ypos = other.cell_array[i,7]+oy
			}else{
				//Pure Movement
				ox = other.x
				oy = other.y
				xpos = other.cell_array[i,0]+ox
				ypos = other.cell_array[i,1]+oy
			}
			var dir = point_direction(ox,oy,xpos,ypos)+other.rotation
			var dis = point_distance(ox,oy,xpos,ypos)
			xpos = lengthdir_x(dis,dir)+ox
			ypos = lengthdir_y(dis,dir)+oy
			var dirto = point_direction(x,y,xpos,ypos)
			var disto = point_distance(x,y,xpos,ypos)
			
			if disto > radius*0.4 and (abs(dir_diff(direction,dirto)) > 90 or speed < friction*(1+disto)/2){
				hspeed += cos(degtorad(dirto))*other.cell_array[i,2]
				vspeed += -sin(degtorad(dirto))*other.cell_array[i,2]
			}
			
			if speed > 0.1{
				var perpdir = dirto+90
				var perpdis = sin(degtorad(dir_diff(direction,dirto)))
				hspeed -= perpdis*cos(degtorad(perpdir))
				vspeed -= perpdis*-sin(degtorad(perpdir))
				
				//debug_variable(true,direction,dirto,perpdir)
			}
		}
	}
}