varying vec4 v_color;//όΝiFj

//(όΝ)}`ΜSΐW
uniform vec2 center;
//(όΝ)}`ΜTCYΜΌͺ
uniform vec2 size_div2;
//(όΝ)oίΤ
uniform float time;

void main()
{
	// `ζsNZΖ}`ΜS_ΜΐWΜ·
	// [-250`0`+250]
	vec2 p = gl_FragCoord.xy - center;
	// [-1.0f`0`+1.0]
	p /= size_div2;

	float col;

	// @
	// S©ηΜ£ [0.0`1.0]
	float len = length(p);

	col = len;

	// A
	// FΜ½] [1.0`0.0]
	col = 1 - col;

	// B
	// sinΦΖΤΙζιeΏ [+0.0`+1.0]
	//float s = sin(sin(time*3.14)+3.14/2) / 2.0 + 0.5;
	float s = cos(sin(time*3.14)) / 2.0 + 0.5;

	// [+0.0`+1.0]
	col *= s;

	// ΕIIΘFΜθ
	gl_FragColor = vec4(col, col, col, 1);
}