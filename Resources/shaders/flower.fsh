varying vec4 v_color;//入力（色）

//(入力)図形の中心座標
uniform vec2 center;
//(入力)図形のサイズの半分
uniform vec2 size_div2;
//(入力)経過時間
uniform float time;

float u(float x) { return (x>0.0)?1.0:0.0; }

void main()
{
	// 描画ピクセルと図形の中心点の座標の差
	// [-250〜0〜+250]
	vec2 p = gl_FragCoord.xy - center;
	// [-1.0f〜0〜+1.0]
	p /= size_div2;
	p-=vec2(1.0,0);

	// 角度 [-3.14〜+3.14]
	float a = atan(p.x, p.y);

	// 中心からの距離 [0.0〜1.0]
	float r = length(p);

	// 一定距離まででカット
	float r_c = step(r, 1.0);

	// 中心からの距離による枝分かれ
	float w1 = cos(3.14*10*time-r*100.0);
	// 角度による枝分かれ
	float w2 = cos(3.14*time-a*100.0);
	
	float col = w1*w2;

	//float h = 0.5 + 0.5*cos(12.0*a-w*7.0+r*8.0);

	//float d = 0.25 + 0.75*pow(h,1.0*r)*(0.7+0.3*w);


	//float col = u(d-r) * sqrt(1.0-r/d)*r*2.5;

	//col *= 1.25+0.25*cos((12.0*a-w*7.0+r*8.0)/2.0);
	//col *= 1.0 - 0.35*(0.5+0.5*sin(r*30.0))*(0.5+0.5*cos(12.0*a-w*7.0+r*8.0));

	//gl_FragColor = vec4(
	//	col,
	//	col-h*0.5+r*0.2 + 0.35*h*(1.0-r),
	//	col-h*r + 0.1*h*(1.0-r),
	//	1);

	// 最終的な色の決定
	gl_FragColor = vec4(col, col+0.5*r_c, col, 1);
}