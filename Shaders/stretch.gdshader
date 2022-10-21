shader_type canvas_item;

uniform float stretch_pos = 0.5f;
void fragment(){
	vec2 p = vec2(UV.x, pow(UV.y, stretch_pos));
	
	COLOR = texture(TEXTURE, vec2(p.x, p.y));   
}