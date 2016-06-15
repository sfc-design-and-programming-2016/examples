// 水平方向に限定した等速運動モデル1

float vx = 1;  //物体の速度 1フレームあたり何ピクセル進むのか pixel/frame
float x = 200; //物体の位置 ここでの入力された値は初期の位置
float radius = 15.0;  //描画する円の半径

void setup(){
  size(400,400);
  noStroke(); 
  fill(0);
  ellipseMode(RADIUS);
}


void draw(){
  background(255);
  
  x += vx;  // 1フレームあたりvxピクセル進ませる 
  
  ellipse(x,200,radius,radius);
  
}