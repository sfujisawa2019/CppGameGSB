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
	// [-1.0f～0～+1.0]
	p /= size_div2;

	float col;

	// 右を基準とした角度を計算[-3.14～+3.14]
	float angle = atan(p.y, p.x);

	// [-1.0～+1.0]
	//float w = sin(sin(time * 3.14) - angle - 3.14/2);
	float w = cos(sin(time * 3.14) - angle);
	// [-0.5～+0.5]
	col = w / 2.0;
	// [+0.0～+1.0]
	col = col + 0.5;

	// 最終的な色の決定
	gl_FragColor = vec4(col, col, col, 1);
}