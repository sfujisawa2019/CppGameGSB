varying vec4 v_color;//���́i�F�j

//(����)�}�`�̒��S���W
uniform vec2 center;
//(����)�}�`�̃T�C�Y�̔���
uniform vec2 size_div2;

void main()
{
	// �`��s�N�Z���Ɛ}�`�̒��S�_�̍��W�̍�
	// [-250�`0�`+250]
	vec2 p = gl_FragCoord.xy - center;

	float col;

	//1. p�̒��������߂�(length)[0�`250]
	float len = length(p);
	//2. �����̍ő�l�Ŋ���[0.0�`1.0]
	len /= size_div2.x;
	//3. col�ɓ����
	col = len;
	//4. �F���]
	col = 1 - col;

	// [-1.0�`0�`+1.0]�ő�l�Ŋ���
	//col = p.y / size_div2.y;
	// [+1.0�`0�`+1.0]��Βl�����
	//col = abs(col);
	// [0�`1�`0]�F�̔��]
	//col = 1.0 - col;

	// �ŏI�I�ȐF�̌���
	gl_FragColor = vec4(col, col, col, 1);
}