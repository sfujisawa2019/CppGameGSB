varying vec4 v_color;//���́i�F�j

//(����)�}�`�̒��S���W
uniform vec2 center;

void main()
{
	vec2 p = gl_FragCoord.xy - center;

	gl_FragColor = vec4(p.x, p.y, 0, 1);
}