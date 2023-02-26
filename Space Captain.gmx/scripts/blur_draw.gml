ratio = view_hport / view_hview
sx = (x - view_xview) * ratio;
sy = (y - view_yview) * ratio;

if !surface_exists(surf)
    surf = surface_create(sprite_width * ratio, sprite_height * ratio)

surface_copy_part(surf, 0, 0, application_surface, sx, sy, sprite_width*ratio, sprite_height*ratio );

shader_set(shd_blur)
shader_set_uniform_f(hresolution, sprite_width * ratio, sprite_height * ratio)
shader_set_uniform_f(hblur_amount, 2)

draw_surface_ext(surf, x, y, 1/ratio, 1/ratio, 0, c_white, 1)
    
shader_reset()
surface_reset_target()
