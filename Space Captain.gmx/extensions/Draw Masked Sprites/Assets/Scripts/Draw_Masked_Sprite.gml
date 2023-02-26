///Draw_Masked_Sprite(surface)
//Prepare texture
surface_set_target(surf2);

    //Draw a tiled texture (Back_spr) with alpha 0. 
    draw_sprite_tiled_ext(Back_spr, 0, 0, 0, 1, 1, c_white, 1);
    
    /* For this draw event to work you need to prepare some objects:
        - one object called 'Texture_par'.
        - for every texture you want to make, you have to prepare a black(!) sprite (see examples). This can be anything you want.
        - For each figure you make an object, call it watherver you want, set visible to false and make the object parent 'Texture_par'.
          Don't forget to asign the sprites to the objects.
    */
    with (Texture_par)
    {
        //For each object that has Texture_par as parent it will draw its sprite on the surface, except if the object has no sprite.
        if sprite_index != -1 then draw_self();
    }
    
surface_reset_target();

//Create a sprite from the texture we made on the surface 'surf2'
sprite_surf = sprite_create_from_surface(surf2, 0, 0, room_width, room_height, true, false, 0, 0);

///Draw_The_Texture
surface_set_target(surf1); //prepare to draw on the surface.
   
    /* For this draw event to work you need to prepare some objects:
        - one object called 'Solid_par'.
        - for every figure you want to make, you have to prepare a black(!) sprite (see examples). This can be anything you want.
        - For each figure you make an object, call it watherver you want, set visible to false and make the object parent 'Solid_par'.
          Don't forget to asign the sprites to the objects.
    */
    with (Solid_par)
    {
        //For each object that has Solid_par as parent it will draw its sprite on the surface, except if the object has no sprite.
        if sprite_index != -1 then draw_self();
    }

    //Set the blend mode to take the texture from the background sprite and the alpha from the black sprites drawn before (see above).
    draw_set_blend_mode_ext(bm_one, bm_dest_alpha);
    
    //Draw the texture (alpha must be 0)
    draw_sprite_ext(sprite_surf, 0, 0, 0, 1, 1, 0, c_white, 0);

    //Reset the blend mode to normal.    
    draw_set_blend_mode(bm_normal);

surface_reset_target(); //We no longer need to draw on the surface, therefor we reset the target.

sprite_index = sprite_create_from_surface(surf1, 0, 0, room_width, room_height, false, false, 0, 0);
//draw_surface(surf1, 0, 0); //draw the surface on the screen.

surface_free(surf1); //We no longer need the surface, therefor to prevent memory leaks we delete the surface.
surface_free(surf2); //same here
sprite_delete(sprite_surf);
