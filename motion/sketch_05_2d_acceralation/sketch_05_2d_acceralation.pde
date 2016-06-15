// 2次元の等加速度速運動モデル

float vx = 1;  //物体の速度 1フレームあたり何ピクセル進むのか ここでの入力された値は初期の速度
float vy = 1;  //物体の速度 1フレームあたり何ピクセル進むのか ここでの入力された値は初期の速度
float x = 200; //物体の位置 ここでの入力された値は初期の位置
float y = 200; //物体の位置 ここでの入力された値は初期の位置
float ax = 0;  //加速度
float ay = 0.5;  //加速度
float radius = 15.0;  //描画する円の半径

void setup(){
  size(400,400);
  noStroke(); 
  fill(0);
  ellipseMode(RADIUS);
}


void draw(){
  background(255);
  
  vx += ax; // 1フレームあたりaxだけ速度vxを増加する。
  vy += ay; // 1フレームあたりayだけ速度vyを増加する。
  x += vx;  // 1フレームあたりvyピクセル進ませる。
  y += vy;  // 1フレームあたりvyピクセル進ませる。
  
  // 下端からはみ出た時の処理を描く
  if(y > height - radius){
    vy *= -1;
    y = height - radius;
  }
  
  //左右の端からはみ出た時の処理を書く。（これまでと同じ）
  
  ellipse(x,y,radius,radius);
  
}