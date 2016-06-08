
//螺旋を描くサンプル

int centX;
int centY;

void setup(){

  size(500,500);
  
  //螺旋の中心座標の計算
  centX = width/2;
  centY = height/2;
  
  background(255);
  strokeWeight(1);
  smooth();
  noLoop();
}

void draw(){
  
  stroke(70);
  
  //螺旋の半径初期化 回転するほど半径が大きくなるようにする
  float radius = 10;
  
  //螺旋上の座標を保存するx,y,lastx,lasty
  float x, y;
  float lastx = -1;
  float lasty = -1;
  
  //ノイズのパラメータを初期化
  float radiusNoise = 0;
  float radiusNoiseStep = 0.05;
  
  //0度〜1440度まで5度づつ角度を増やす
  for (float ang = 0; ang <= 1440; ang += 5) {	
    radius += 0.5;
    
    //ノイズのパラメータを更新し、ノイズを加えた座標を計算
    radiusNoise += radiusNoiseStep;
    float newRadius = radius + (noise(radiusNoise)*100 -50);
    
    //度からラジアンに変換し、座標を計算
    float rad = radians(ang);
    x = centX + (newRadius * cos(rad));
    y = centY + (newRadius * sin(rad));
    
    //ひとつ前の座標との間に線を引く
    if (lastx > -1) {
      line(x,y,lastx,lasty);
    }
    lastx = x;
    lasty = y;  
  }
  
}