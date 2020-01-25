varying vec4 v_color;//���́i�F�j

//(����)�}�`�̒��S���W
uniform vec2 center;
//(����)�}�`�̃T�C�Y�̔���
uniform vec2 size_div2;
//(����)�o�ߎ���
uniform float time;

float u(float x) { return (x>0.0)?1.0:0.0; }

void main()
{
	// �`��s�N�Z���Ɛ}�`�̒��S�_�̍��W�̍�
	// [-250�`0�`+250]
	vec2 p = gl_FragCoord.xy - center;
	// [-1.0f�`0�`+1.0]
	p /= size_div2;

	float a = atan(p.x, p.y);

	// ���S����̋��� [0.0�`1.0]
	float r = length(p);

	float w = cos(3.14*time-r*2.0);

	float h = 0.5 + 0.5*cos(12.0*a-w*7.0+r*8.0);

	float d = 0.25 + 0.75*pow(h,1.0*r)*(0.7+0.3*w);

	float col = u(d-r) * sqrt(1.0-r/d)*r*2.5;

	col *= 1.25+0.25*cos((12.0*a-w*7.0+r*8.0)/2.0);
	col *= 1.0 - 0.35*(0.5+0.5*sin(r*30.0))*(0.5+0.5*cos(12.0*a-w*7.0+r*8.0));

	gl_FragColor = vec4(
		col,
		col-h*0.5+r*0.2 + 0.35*h*(1.0-r),
		col-h*r + 0.1*h*(1.0-r),
		1);

	// �ŏI�I�ȐF�̌���
	//gl_FragColor = vec4(col, col, col, 1);
}