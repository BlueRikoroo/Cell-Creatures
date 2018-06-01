/// @description creature_change_size(newSize)
/// @param newSize
var diff = argument0/size

if is_array(cell_array){
	for (var i = array_height_2d(cell_array)-1;i >= 0; i--){
		with(cell_array[i,3]){
			cell_change_size(diff)
		}
		cell_array[i,0] *= diff
		cell_array[i,1] *= diff
		cell_array[i,6] *= diff
		cell_array[i,7] *= diff
	}
	size *= diff
}