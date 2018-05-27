/// @description 
// 

event_inherited()

var force = 1
var lID = cell_create(-20,0,force)
lID = cell_create_connected(-20,20,force,cell_get_object(lID)) 
lID = cell_create_connected(-20,40,force,cell_get_object(lID)) 
lID = cell_create_connected(-20,60,force,cell_get_object(lID))
lID = cell_create_connected(-20,80,force,cell_get_object(lID)) 
lID = cell_create_connected(-20,100,force,cell_get_object(lID)) 
lID = cell_create_connected(-10,115,force,cell_get_object(lID)) 

lID = cell_create(20,0,force)
lID = cell_create_connected(20,20,force,cell_get_object(lID))
lID = cell_create_connected(20,40,force,cell_get_object(lID))
lID = cell_create_connected(20,60,force,cell_get_object(lID))
lID = cell_create_connected(20,80,force,cell_get_object(lID))
lID = cell_create_connected(20,100,force,cell_get_object(lID))
lID = cell_create_connected(10,115,force,cell_get_object(lID))