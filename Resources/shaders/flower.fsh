varying vec4 v_color;//入力（色）

//(入力)図形の中心座標
uniform vec2 center;
//(入力)図形のサイズの半分
uniform vec2 size_div2;
//(入力)経過時間
uniform float time;

void main()
{
	// 描画ピクセルと図形の中心点の座標の差
	// [-250～0～+250]
	vec2 p = gl_FragCoord.xy - center;

	float col;

	float w = sin(time * 3.14);
	
	col = w / 2.0 + 0.5;

	// 最終的な色の決定
	gl_FragColor = vec4(col, col, col, 1);
}