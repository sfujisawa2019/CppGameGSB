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

	//1. pの長さを求める(length)[0～250]
	float len = length(p);
	//2. 長さの最大値で割る[0.0～1.0]
	len /= size_div2.x;
	//3. colに入れる
	col = len;
	//4. 色反転
	col = 1 - col;

	// [-1.0～0～+1.0]最大値で割る
	//col = p.y / size_div2.y;
	// [+1.0～0～+1.0]絶対値を取る
	//col = abs(col);
	// [0～1～0]色の反転
	//col = 1.0 - col;

	// 最終的な色の決定
	gl_FragColor = vec4(col, col, col, 1);
}