attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_texcoord;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    v_texcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~


varying vec2 v_texcoord;

//uniform float time;
//uniform vec2 mouse_pos;
uniform vec2 resolution;
uniform float blur_amount;

void main()
{
float blurSize = 1.0/resolution.x * blur_amount;

    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x - 4.0*blurSize, v_vtexcoord.y)) * 0.05;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x - 3.0*blurSize, v_vtexcoord.y)) * 0.09;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x - 2.0*blurSize, v_vtexcoord.y)) * 0.12;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x - blurSize, v_vtexcoord.y)) * 0.15;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x, v_vtexcoord.y)) * 0.16;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x + blurSize, v_vtexcoord.y)) * 0.15;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x + 2.0*blurSize, v_vtexcoord.y)) * 0.12;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x + 3.0*blurSize, v_vtexcoord.y)) * 0.09;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x + 4.0*blurSize, v_vtexcoord.y)) * 0.05;

blurSize = 1.0/resolution.y * blur_amount;

    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x, v_vtexcoord.y - 4.0*blurSize)) * 0.05;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x, v_vtexcoord.y - 3.0*blurSize)) * 0.09;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x, v_vtexcoord.y - 2.0*blurSize)) * 0.12;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x, v_vtexcoord.y - blurSize)) * 0.15;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x, v_vtexcoord.y)) * 0.16;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x, v_vtexcoord.y + blurSize)) * 0.15;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x, v_vtexcoord.y + 2.0*blurSize)) * 0.12;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x, v_vtexcoord.y + 3.0*blurSize)) * 0.09;
    sum += texture2D(gm_BaseTexture, vec2(v_vtexcoord.x, v_vtexcoord.y + 4.0*blurSize)) * 0.05;

gl_FragColor = sum
}
