varying vec4 v_color;//���́i�F�j

//(����)�}�`�̒��S���W
uniform vec2 center;
//(����)�}�`�̃T�C�Y�̔���
uniform vec2 size_div2;
//(����)�o�ߎ���
uniform float time;

void main()
{
	// �`��s�N�Z���Ɛ}�`�̒��S�_�̍��W�̍�
	// [-250�`0�`+250]
	vec2 p = gl_FragCoord.xy - center;
	// [-1.0f�`0�`+1.0]
	p /= size_div2;

	float col;

	// �@
	// ���S����̋��� [0.0�`1.0]
	float len = length(p);

	col = len;

	// �A
	// �F�̔��] [1.0�`0.0]
	col = 1 - col;

	// �B
	// sin�֐��Ǝ��Ԃɂ��e�� [+0.0�`+1.0]
	//float s = sin(sin(time*3.14)+3.14/2) / 2.0 + 0.5;
	float s = cos(sin(time*3.14)) / 2.0 + 0.5;

	// [+0.0�`+1.0]
	col *= s;

	// �ŏI�I�ȐF�̌���
	gl_FragColor = vec4(col, col, col, 1);
}