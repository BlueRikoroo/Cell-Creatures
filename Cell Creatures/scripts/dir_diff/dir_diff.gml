/// @description dir_diff(angle1,angle2)
/// @param angle1
/// @param angle2
// dir_diff - Find the shortest distance between two angles.
// Usage: difference = dir_diff(angle_1, angle_2);
var angle_1, angle_2, result;
angle_1 = argument0;
angle_2 = argument1;
result = angle_1 - angle_2;
while (result > 180)  { result -= 360 }
while (result < -180) { result += 360 }
return result;
