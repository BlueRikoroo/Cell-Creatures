/// @description 
// 
if is_array(cell_array){
	for (var i = array_height_2d(cell_array)-1;i >= 0; i--){
		if !instance_exists(cell_array[i,3]){
			for(var k = i; k < array_height_2d(cell_array)-1; k++){
				for(var p = array_length_2d(cell_array,k)-1;p>=0;p--)
					cell_array[k,p] = 	cell_array[k+1,p]
			}
			cell_count--
			continue
		}
		if cell_array[i,4] and !instance_exists(cell_array[i,5]){
			cell_array[i,4] = false
		}	
		
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
//Digestion Arrays
if is_array(other.digestion_array){
	for (var i = array_height_2d(digestion_array)-1;i >= 0; i--){
		if !instance_exists(digestion_array[i,0]) or !instance_exists(digestion_array[i,1]){
			for(var k = i; k < array_height_2d(digestion_array)-1; k++){
				digestion_array[k,0] = 	digestion_array[k+1,0]
				digestion_array[k,1] = 	digestion_array[k+1,1]
			}
			digestion_count--
			continue
		}
		
		with(par_cell){
			if uniqueID	!= other.uniqueID{
				var obj1 = other.digestion_array[i,0]
				var obj2 = other.digestion_array[i,1]
				if collision_line(obj1.x,obj1.y,obj2.x,obj2.y,id,0,false){
					var otherrad = min(obj1.radius,obj2.radius)
					var percentile = 0.001*min(1,(32/point_distance(obj1.x,obj1.y,obj2.x,obj2.y)))
					var sizediff = percentile*otherrad/radius
					var sizediffother = percentile*radius/otherrad
					with(other){
						creature_increase_size(sizediffother/cell_count)
						creature_adjust_size()
					}
					cell_change_size(1-sizediff)
					if radius < otherrad*0.2
						instance_destroy()
				}
			}
		}
	}
}

if controlling{
	if keyboard_check(ord("A"))
		rotation+=rotationSpeed
	if keyboard_check(ord("D"))
		rotation-=rotationSpeed
	if keyboard_check(ord("W")){
		x+=lengthdir_x(maxSpeed,rotation+faceingDirection)
		y+=lengthdir_y(maxSpeed,rotation+faceingDirection)
	}
	if keyboard_check(ord("S")){
		x-=lengthdir_x(maxSpeed,rotation+faceingDirection)
		y-=lengthdir_y(maxSpeed,rotation+faceingDirection)
	}
}