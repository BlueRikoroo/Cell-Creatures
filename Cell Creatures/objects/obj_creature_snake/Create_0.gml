/// @description 
// 

event_inherited()

controlling = true
faceingDirection = 90

var force = 2
var lID = cell_create(-20,0,force)
var headLeft = lID
lID = cell_create_connected(-20,20,force,cell_get_object(lID)) 
lID = cell_create_connected(-20,40,force,cell_get_object(lID)) 
lID = cell_create_connected(-20,60,force,cell_get_object(lID))
lID = cell_create_connected(-20,80,force,cell_get_object(lID)) 
var tail5 = lID
lID = cell_create_connected(-20,100,force,cell_get_object(lID))
var tail1 = lID
lID = cell_create_connected(-10,115,force,cell_get_object(lID)) 
var tail2 = lID

lID = cell_create(20,0,force)
var headRight = lID
lID = cell_create_connected(20,20,force,cell_get_object(lID))
lID = cell_create_connected(20,40,force,cell_get_object(lID))
lID = cell_create_connected(20,60,force,cell_get_object(lID))
lID = cell_create_connected(20,80,force,cell_get_object(lID))
var tail6 = lID
lID = cell_create_connected(20,100,force,cell_get_object(lID))
var tail3 = lID
lID = cell_create_connected(10,115,force,cell_get_object(lID))
var tail4 = lID

cell_link_digestor(tail1,tail3)
cell_link_digestor(tail1,tail4)
cell_link_digestor(tail2,tail3)
cell_link_digestor(tail1,tail6)
cell_link_digestor(tail3,tail5)

lID = cell_create_connected_relative(-20,10,force,headLeft) 
lID = cell_create_connected_relative(0,20,force,lID) 
lID = cell_create_connected_relative(0,20,force,lID) 
lID = cell_create_connected_relative(0,20,force,lID) 
lID = cell_create_connected_relative(0,20,force,lID) 
lID = cell_create_connected_relative(0,20,force,lID) 
lID = cell_create_connected_relative(10,20,force,lID) 
lID = cell_create_connected_relative(20,10,force,lID) 

lID = cell_create_connected_relative(20,10,force,headRight) 
lID = cell_create_connected_relative(0,20,force,lID) 
lID = cell_create_connected_relative(0,20,force,lID) 
lID = cell_create_connected_relative(0,20,force,lID) 
lID = cell_create_connected_relative(0,20,force,lID) 
lID = cell_create_connected_relative(0,20,force,lID) 
lID = cell_create_connected_relative(-10,20,force,lID) 
lID = cell_create_connected_relative(-20,10,force,lID) 