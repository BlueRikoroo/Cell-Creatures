/// @description creature_increase_size(relSize)
/// @param relSize
var amount = argument0

if is_array(cell_array){
	for (var i = array_height_2d(cell_array)-1;i >= 0; i--){
		var diff = (1+amount)
		with(cell_array[i,3]){
			cell_change_size(diff)
		}
	}
}