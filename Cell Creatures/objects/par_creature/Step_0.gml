/// @description 
// 
if is_array(cell_array){
	for (var i = array_height_2d(cell_array)-1;i >= 0; i--){
		if cell_array[i,4]{
			//Connected Parental Movement
			with(cell_array[i,3]){
				var ox = other.cell_array[i,5].x
				var oy = other.cell_array[i,5].y
				var xpos = other.cell_array[i,0]+ox
				var ypos = other.cell_array[i,1]+oy
				var dir = point_direction(ox,oy,xpos,ypos)+other.rotation
				var dis = point_distance(ox,oy,xpos,ypos)
				xpos = lengthdir_x(dis,dir)+ox
				ypos = lengthdir_y(dis,dir)+oy
				var dirto = point_direction(x,y,xpos,ypos)
				var disto = point_distance(x,y,xpos,ypos)
		
				hspeed += cos(degtorad(dirto))*min(disto*other.cell_array[i,2],1.1)
				vspeed += -sin(degtorad(dirto))*min(disto*other.cell_array[i,2],1.1)
			}
		}else{
			//Pure Movement
			with(cell_array[i,3]){
				var xpos = other.cell_array[i,0]+other.x
				var ypos = other.cell_array[i,1]+other.y
				var dir = point_direction(other.x,other.y,xpos,ypos)+other.rotation
				var dis = point_distance(other.x,other.y,xpos,ypos)
				xpos = lengthdir_x(dis,dir)+other.x
				ypos = lengthdir_y(dis,dir)+other.y
				var dirto = point_direction(x,y,xpos,ypos)
				var disto = point_distance(x,y,xpos,ypos)
		
				hspeed += cos(degtorad(dirto))*min(disto*other.cell_array[i,2],1.1)
				vspeed += -sin(degtorad(dirto))*min(disto*other.cell_array[i,2],1.1)
			}
		}
	}
}