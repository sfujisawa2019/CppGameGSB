varying vec4 v_color;//入力（色）

//(入力)図形の中心座標
uniform vec2 center;
//(入力)図形のサイズの半分
uniform vec2 size_div2;

void main()
{
	// 描画ピクセルと図形の中心点の座標の差
	// [-250～0～+250]
	vec2 p = gl_FragCoord.xy - center;

	float col;
	float col1, col2;

	/* ここから怪獣の形をつくる */
	// 右を出発点として反時計回りの角度を計算
	float angle = atan(p.y, p.x);
	// ラジアンを度数法に変換[-180～0～+180]
	float deg = degrees(angle);
	// マイナスをプラスに変換[+180～0～+180]
	deg = abs(deg);
	// 30度をしきい値でぬりわけ
	col1 = step(30, deg);

	/* 円の形をつくる */
	// 中心からの距離[0.0～1.0]
	float len = length(p) / size_div2.x;
	// 白黒反転
	col2 = 1 - len;
	// プラスの部分を白に、それ以外を黒に
	col2 = sign(col2);

	// 掛け算で形状を合成
	col = col1 * col2;

	// 最終的な色の決定
	gl_FragColor = vec4(1, 1, 0, col);
}