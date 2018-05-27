/// @description cell_create(x,y,force)
/// @param x
/// @param y
/// @param force
cell_array[cell_count,0] = argument0
cell_array[cell_count,1] = argument1
cell_array[cell_count,2] = argument2
cell_array[cell_count,3] = instance_create_layer(x+argument0,y+argument1,obj_controller.cellLayer,par_cell)
cell_array[cell_count,4] = false
cell_array[cell_count,5] = noone
cell_array[cell_count,6] = 0
cell_array[cell_count,7] = 0

cell_array[cell_count,3].uniqueID = uniqueID
cell_array[cell_count,3].creature = id

cell_count++
return cell_count-1
