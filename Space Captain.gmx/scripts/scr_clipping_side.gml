///Draw_Masked_Sprite(surface)
//Prepare texture
    //Draw a tiled texture (Back_spr) with alpha 0. 
    
    /* For this draw event to work you need to prepare some objects:
        - one object called 'Texture_par'.
        - for every texture you want to make, you have to prepare a black(!) sprite (see examples). This can be anything you want.
        - For each figure you make an object, call it watherver you want, set visible to false and make the object parent 'Texture_par'.
          Don't forget to asign the sprites to the objects.
    */
    //with (Texture_par)
    //{
        //For each object that has Texture_par as parent it will draw its sprite on the surface, except if the object has no sprite.
        //if sprite_index != -1 then draw_self();
    //}
var surf_tile = surface_create(sprite_width, sprite_height)
surface_set_target(surf_tile);
draw_clear_alpha(c_white,0)
clip_sqaure_complex_side()
surface_reset_target();
var sprite_surf = sprite_create_from_surface(surf_tile, 0, 0, sprite_width, sprite_height, true, false, 0, 0);

//Create a sprite from the texture we made on the surface 'surf2'
//same here

///Create a surface in the variable surf1 we just made

///Draw_The_Texture
var surf_blend = surface_create(sprite_width, sprite_height)
surface_set_target(surf_blend); //prepare to draw on the surface.
draw_clear_alpha(c_white,0)  
    /* For this draw event to work you need to prepare some objects:
        - one object called 'Solid_par'.
        - for every figure you want to make, you have to prepare a black(!) sprite (see examples). This can be anything you want.
        - For each figure you make an object, call it watherver you want, set visible to false and make the object parent 'Solid_par'.
          Don't forget to asign the sprites to the objects.
    */
    //if sprite_index != -1 then draw_self();
    draw_sprite_ext(sprite_index,0,0,0,1,1,0,c_black,1)
    //Set the blend mode to take the texture from the background sprite and the alpha from the black sprites drawn before (see above).
    draw_set_blend_mode_ext(bm_one, bm_dest_alpha);
    
    //Draw the texture (alpha must be 0)
    draw_sprite_ext(sprite_surf, 0, 0, 0, 1, 1, 0, image_blend, 0);

    //Reset the blend mode to normal.    
    draw_set_blend_mode(bm_normal);
//We no longer need to draw on the surface, therefor we reset the target.
surface_reset_target(); 
/*side*/ sprite_index = sprite_create_from_surface(surf_blend, 0, 0, sprite_width, sprite_height, false, false, 0, 0);
//draw_surface(surf1, 0, 0); //draw the surface on the screen.

surface_free(surf_tile);
surface_free(surf_blend); //We no longer need the surface, therefor to prevent memory leaks we delete the surface.
sprite_delete(sprite_surf);
