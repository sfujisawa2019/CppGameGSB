varying vec4 v_color;//入力（色）

void main()
{
	gl_FragColor = vec4(gl_FragCoord.x/1280, 0, 0, 1);
}