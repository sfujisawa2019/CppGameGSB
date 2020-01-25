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

	// �E����Ƃ����p�x���v�Z[-3.14�`+3.14]
	float angle = atan(p.y, p.x);

	// [-1.0�`+1.0]
	//float w = sin(sin(time * 3.14) - angle - 3.14/2);
	float w = cos(sin(time * 3.14) - angle);
	// [-0.5�`+0.5]
	col = w / 2.0;
	// [+0.0�`+1.0]
	col = col + 0.5;

	// �ŏI�I�ȐF�̌���
	gl_FragColor = vec4(col, col, col, 1);
}