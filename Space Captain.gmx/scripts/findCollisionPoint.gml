#define findCollisionPoint
///findCollisionPoint(sourceX, sourceY, angle, length)
var _sourceX = argument0
var _sourceY = argument1
var _angle = argument2
var _length = argument3
var _testLength = _length
var _testX = _sourceX
var _testY = _sourceY
var _lengthX
var _lengthY
var _newLength
var _foundCollision = false

while( abs(_testLength) > 1) {
    _testLength *= 0.5

    if (checkLine(_testX, _testY, _angle, _testLength)) = 0{
        
        _lengthX = lengthdir_x(_testLength, _angle) //GM sin/cosine. Y axis is flipped, need degrees not radians.
        _lengthY = lengthdir_y(_testLength, _angle)
        _testX += _lengthX
        _testY += _lengthY
    }
    else {_foundCollision = true}
}

_newLength = abs(point_distance(_sourceX, _sourceY, _testX, _testY)) //GM way to find vector magnitude

if (_foundCollision = true) return _newLength
else return _length
    


#define checkEndPoint
///checkEndPoint(sourceX, sourceY, angle, length)
var t_sourceX = argument0
var t_sourceY = argument1
var t_angle = argument2
var t_length = argument3
var t_endX
var t_endY
var t_instance

t_endX = t_sourceX + lengthdir_x(t_length, t_angle)
t_endY = t_sourceY + lengthdir_y(t_length, t_angle)
t_instance = collision_point(t_endX, t_endY, obj_solid, true, true)

if t_instance = noone
    return 0
else
    return t_instance

#define checkLine
///checkLine(sourceX, sourceY, angle, length)
var t_sourceX = argument0
var t_sourceY = argument1
var t_angle = argument2
var t_length = argument3
var t_endX
var t_endY
var t_instance

t_endX = t_sourceX + lengthdir_x(t_length, t_angle)
t_endY = t_sourceY + lengthdir_y(t_length, t_angle)
t_instance = collision_line(t_sourceX, t_sourceY, t_endX, t_endY, obj_solid, true, true)

if t_instance = noone
    return 0
else
    return t_instance