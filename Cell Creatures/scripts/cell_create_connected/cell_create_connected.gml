/// @description cell_create_connected(x,y,force,object)
/// @param x
/// @param y
/// @param force
cell_array[cell_count,0] = argument0
cell_array[cell_count,1] = argument1
cell_array[cell_count,2] = argument2
cell_array[cell_count,3] = instance_create_layer(x+argument0,y+argument1,obj_controller.cellLayer,par_cell)
cell_array[cell_count,4] = true
cell_array[cell_count,5] = argument3
cell_array[cell_count,6] = cell_array[cell_count,3].x-argument3.x
cell_array[cell_count,7] = cell_array[cell_count,3].y-argument3.y

cell_count++
return cell_count-1