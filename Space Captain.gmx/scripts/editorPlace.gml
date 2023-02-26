#define editorPlace
object = argument0

switch (object)
{
    case "wall_128": wall_128_place(); break;
}
 

#define wall_128_place
if global.editor = 1
    instance_create(obj_placement_preview.x, obj_placement_preview.y, obj_wall128)