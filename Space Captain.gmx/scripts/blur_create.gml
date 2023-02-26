hresolution = shader_get_uniform(shd_blur,"resolution")
hblur_amount = shader_get_uniform(shd_blur,"blur_amount")
ratio = view_hport/view_hview;
surf = surface_create(sprite_width * ratio, sprite_height * ratio)
