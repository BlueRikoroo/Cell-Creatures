/// @description 
// 
if is_array(other.digestion_array){
	draw_set_color(c_red)
	for (var i = array_height_2d(digestion_array)-1;i >= 0; i--){
		if !instance_exists(digestion_array[i,0]) or !instance_exists(digestion_array[i,1]){
			for(var k = i; k < array_height_2d(digestion_array)-1; k++){
				digestion_array[k,0] = 	digestion_array[k+1,0]
				digestion_array[k,1] = 	digestion_array[k+1,1]
			}
			digestion_count--
			continue
		}
		
		var obj1 = other.digestion_array[i,0]
		var obj2 = other.digestion_array[i,1]
		draw_line(obj1.x,obj1.y,obj2.x,obj2.y)
	}
}