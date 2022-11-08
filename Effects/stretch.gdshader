shader_type canvas_item;

uniform float stretch_pos = 3.0;
uniform float b = 0.1f;
uniform float a = 1.47f;
uniform float c = 0.734f;
void fragment(){
	//float z = stretch_pos;
	//float newY = 0.5 * (sin(UV.y - 0.5) / sqrt(b * b + pow(sin(UV.y - 0.5), 2.0))) + 0.5;
	float newY = pow(tan(a * UV.y - c), 3.0) + 0.5;
	//float newY = pow(UV.y - 1.0, 5.0) + 1.0;
	vec2 p = vec2(UV.x, newY);
	//vec2 p = vec2(UV.x, pow(UV.y, stretch_pos));
	
	COLOR = texture(TEXTURE, vec2(p.x, p.y));   
}