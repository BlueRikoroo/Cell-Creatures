/// @description 
// 

event_inherited()

var primary = cell_create(20,-20,2)
var top = cell_create_connected(0,-20,2,cell_get_object(primary))
var left = cell_create_connected(-20,0,2,cell_get_object(primary))
var bottom = cell_create_connected(0,20,2,cell_get_object(primary))
var right = cell_create_connected(20,0,2,cell_get_object(primary))

cell_link_digestor(top,bottom)
cell_link_digestor(left,right)

