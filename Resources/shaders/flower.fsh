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

	float col;

	float w = sin(time * 3.14);
	
	col = w / 2.0 + 0.5;

	// �ŏI�I�ȐF�̌���
	gl_FragColor = vec4(col, col, col, 1);
}