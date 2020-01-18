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
	float col1, col2;

	/* ����������b�̌`������ */
	// �E���o���_�Ƃ��Ĕ����v���̊p�x���v�Z
	float angle = atan(p.y, p.x);
	// ���W�A����x���@�ɕϊ�[-180�`0�`+180]
	float deg = degrees(angle);
	// �}�C�i�X���v���X�ɕϊ�[+180�`0�`+180]
	deg = abs(deg);
	// 30�x���������l�łʂ�킯
	col1 = step(30, deg);

	/* �~�̌`������ */
	// ���S����̋���[0.0�`1.0]
	float len = length(p) / size_div2.x;
	// �������]
	col2 = 1 - len;
	// �v���X�̕����𔒂ɁA����ȊO������
	col2 = sign(col2);

	// �|���Z�Ō`�������
	col = col1 * col2;

	// �ŏI�I�ȐF�̌���
	gl_FragColor = vec4(1, 1, 0, col);
}