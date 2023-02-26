/// blur_create_exit(width, height)
argument0 = w
argument1 = h

hresolution = shader_get_uniform(shd_blur,"resolution")
hblur_amount = shader_get_uniform(shd_blur,"blur_amount")
ratio = view_hport/view_hview;
surf = surface_create(w * ratio, h * ratio)
