
//ノイズを加えた螺旋を多重に描くサンプル

int centX;
int centY;

void setup(){

  size(500,500);
  
  //螺旋の中心座標の計算
  centX = width/2;
  centY = height/2;
  
  background(0);
  strokeWeight(0.5);
  smooth();
  noLoop();
  blendMode(ADD);
  colorMode(HSB);
}

void draw(){
  
  for(int i=0; i<100; i++){
    
    float h = 128 + random(128)-64;
    stroke(h,200,225,60);
    
    //螺旋の半径初期化 回転するほど半径が大きくなるようにする
    float radius = 10;
    
    //螺旋上の座標を保存するx,y,lastx,lasty
    float x, y;
    float lastx = -1;
    float lasty = -1;
    
    //ノイズのパラメータを初期化
    float radiusNoise = random(10);
    float radiusNoiseStep = 0.05;
    
    //開始の角度、終了の角度、回転する角度を初期化
    int startAng  = int(random(360));
    int endAng = 1440 + int(random(1440));
    int angStep = 5 + int(random(3));
    
    
    //startAng〜endAngまでangStepづつ角度を増やす
    for (float ang = startAng; ang <= endAng; ang += angStep) {	
      radius += 0.5;
      
      //ノイズのパラメータを更新し、ノイズを加えた座標を計算
      radiusNoise += radiusNoiseStep;
      float newRadius = radius + (noise(radiusNoise)*200 -100);
      
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
  
}