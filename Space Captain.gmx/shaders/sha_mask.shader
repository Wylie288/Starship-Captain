attribute vec3 in_Position; // (x,y,z)
attribute vec4 in_Colour; // (r,g,b,a)
attribute vec2 in_TextureCoord; // (u,v)
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPos;
void main() {
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    v_vPos = in_Position.xy;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord; // (x,y,z)
varying vec4 v_vColour;  // (r,g,b,a)
varying vec2 v_vPos;  // (x,y)
uniform vec4 uvs; // (x,y,z,w) (left, top, width, height)
uniform vec2 texture_size; //(inverse)
uniform sampler2D texture;
void main() {
    vec2 texCoord = fract(v_vPos * texture_size) * uvs.zw + uvs.xy; //(tile position) * (texture size) + (texture_offset)
    vec4 new_texture = texture2D(gm_BaseTexture, texCoord);
    vec4 old_texture = texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor = vec4(new_texture.rgb, v_vColour.a * old_texture.a);
}
