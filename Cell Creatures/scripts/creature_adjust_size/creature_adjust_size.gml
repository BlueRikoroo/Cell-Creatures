


if is_array(cell_array){
	var total = array_height_2d(cell_array)
	var count = 0
	for (var i = array_height_2d(cell_array)-1;i >= 0; i--){
		if instance_exists(cell_array[i,3])
			count+=cell_array[i,3].radius
	}
	var prevsize = size
	size = (count/10)/total
	var diff = size/prevsize
	for (var i = array_height_2d(cell_array)-1;i >= 0; i--){
		cell_array[i,0] *= diff
		cell_array[i,1] *= diff
		cell_array[i,6] *= diff
		cell_array[i,7] *= diff
	}
}