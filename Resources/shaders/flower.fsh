varying vec4 v_color;//���́i�F�j

//(����)�}�`�̒��S���W
uniform vec2 center;
//(����)�}�`�̃T�C�Y�̔���
uniform vec2 size_div2;

void main()
{
	// �`��s�N�Z���Ɛ}�`�̒��S�_�̍��W�̍�
	vec2 p = gl_FragCoord.xy - center;

	float col;

	col = p.x / size_div2.x;

	gl_FragColor = vec4(col, col, col, 1);
}