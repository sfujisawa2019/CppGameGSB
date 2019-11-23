attribute vec4 a_position;	//�i���́j���W
attribute vec4 a_color;		//�i���́j�F

uniform mat4 u_wvp_matrix;	//�i���́j

varying vec4 v_color;		//�i�o�́j�F

void main()
{
	gl_Position = u_wvp_matrix * a_position;
	v_color = a_color;
}