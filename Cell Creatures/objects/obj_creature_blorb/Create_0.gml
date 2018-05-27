/// @description 
// 

event_inherited()

var primary = cell_create(0,0,0.1)
cell_create_connected(0,-20,0.1,cell_get_object(primary))
cell_create_connected(-20,0,0.1,cell_get_object(primary))
cell_create_connected(0,20,0.1,cell_get_object(primary))
cell_create_connected(20,0,0.1,cell_get_object(primary))