/// @description 
// 

event_inherited()

var force = 2
var lID = cell_create(-20,0,force)
lID = cell_create_connected(-20,20,force,cell_get_object(lID)) 
lID = cell_create_connected(-20,40,force,cell_get_object(lID)) 
lID = cell_create_connected(-20,60,force,cell_get_object(lID))
lID = cell_create_connected(-20,80,force,cell_get_object(lID)) 
lID = cell_create_connected(-20,100,force,cell_get_object(lID))
var tail1 = lID
lID = cell_create_connected(-10,115,force,cell_get_object(lID)) 
var tail2 = lID

lID = cell_create(20,0,force)
lID = cell_create_connected(20,20,force,cell_get_object(lID))
lID = cell_create_connected(20,40,force,cell_get_object(lID))
lID = cell_create_connected(20,60,force,cell_get_object(lID))
lID = cell_create_connected(20,80,force,cell_get_object(lID))
lID = cell_create_connected(20,100,force,cell_get_object(lID))
var tail3 = lID
lID = cell_create_connected(10,115,force,cell_get_object(lID))
var tail4 = lID

cell_link_digestor(tail1,tail3)
cell_link_digestor(tail2,tail4)
cell_link_digestor(tail1,tail4)
cell_link_digestor(tail2,tail3)