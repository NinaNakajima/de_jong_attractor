//De Jong Attracter(ストレンジアトラクター）
float x = 1, y = 1;

//この値によって図形が変わる（ランダム、実行するごとに変わる）
float a = random(-5.0, 5.0), b = random(-5.0, 5.0), 
      c = random(-5.0, 5.0), d = random(-5.0, 5.0);

//sample
//float a = -1.844573, b = 2.1736627, c = -1.4082022, d = 3.7772598;
//float a= -1.955632 , b= 3.877143 , c= 1.2849236 , d= 4.7013083;
//float a= -1.1560369 , b= -2.5254626 , c= -3.4809804 , d= -1.7207253;
//float a= 3.1383839 , b= 3.4368553 , c= -2.4457116 , d= -1.2192953;
//float a= -2.1224566 , b= -3.5954416 , c= 2.3859386 , d= -0.7026043;

float cl = random(360);  //色ランダム

//画像として保存する際に必要な変数
int count = 1;
int ye = year();
int mo = month();
int da = day();
int ho = hour();
int mi = minute();
int se = second();

void setup(){
  size(1100, 1100);
  blendMode(ADD);
  colorMode(HSB, 360, 100, 100);
  background(0);
  println("number=", count, ", a=", a, ", b=", b, ", c=", c, ", d=", d);  //コンソールに値を出力
}

void draw(){
  stroke(cl, 40, 100, 50);  //色の指定
  float _x, _y;
  for (int i = 0; i < 500; i++){
    _x = sin(a * y) - cos(b * x);
    _y = sin(c * x) - cos(d * y);
    point(_x * 200 + width*0.5,  _y * 200 + height*0.5);
    x = _x;
    y = _y;
  }
}

void keyPressed(){
  if(keyCode == ENTER){  //エンターキーが押されたら
    //「日時_番号.png」の名前で画像を保存
    save(ye + "_"+ mo + "_" + da + "_" + ho + "_" + mi + "_" + se + "_" + count + ".png");
    count++;      //この処理を行うごとにcount(番号)を1増やす
  }
}

void mousePressed() {
  redraw();
  background(0);
  a = random(-5.0, 5.0);
  b = random(-5.0, 5.0);
  c = random(-5.0, 5.0);
  d = random(-5.0, 5.0);
  cl = random(360);
  println("number=", count, ", a=", a, ", b=", b, ", c=", c, ", d=", d);  //コンソールに値を出力
}


//referenceURL
//https://www.fal-works.com/creative-coding-posts/de-jong-attractor
//https://ayumu-nagamatsu.com/archives/431/
