// 引力・斥力モデル

float vx = 1;  //物体の速度 1フレームあたり何ピクセル進むのか ここでの入力された値は初期の速度
float vy = 1;  //物体の速度 1フレームあたり何ピクセル進むのか ここでの入力された値は初期の速度
float x = 200; //物体の位置 ここでの入力された値は初期の位置
float y = 200; //物体の位置 ここでの入力された値は初期の位置
float ax = 0;  //加速度
float ay = 0;  //加速度
float magnetism = 2.0; //引力の強さ マイナスにすると斥力になる。
float radius = 5 ; //描画する円の半径

void setup(){
  size(400,400);
  noStroke(); 
  fill(0);
  ellipseMode(RADIUS);
  background(255);
}


void draw(){
  fill(255,255,255,64);
  rect(0,0,width,height);
  
  float distance = dist(mouseX, mouseY, x, y); //dist(x1,y1,x2,y2) ２点間の距離を求める関数
  
  //加速度は引力の中心からの距離の二乗に反比例する。
  ax = magnetism * (mouseX - x) / (distance * distance); 
  ay = magnetism * (mouseY - y) / (distance * distance);
  
  vx += ax; // 1フレームあたりaxだけ速度vxを増加する。
  vy += ay; // 1フレームあたりayだけ速度vyを増加する。
  x += vx;  // 1フレームあたりvyピクセル進ませる。
  y += vy;  // 1フレームあたりvyピクセル進ませる。
  
  
  //上下左右の端からはみ出た時の処理を書く。（これまでと同じ）
  
  
  fill(0);
  ellipse(x,y,radius,radius);
  
}