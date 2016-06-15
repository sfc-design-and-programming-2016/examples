// 円運動は、水平の振動と垂直の振動を重ねあわせたモデル

float x = 200; //物体の位置 ここでの入力された値は初期の位置
float y = 200; //物体の位置 ここでの入力された値は初期の位置
float centerX = 200;    //振動の中心
float centerY = 200;    //振動の中心
float ampX = 100;       //振動の幅（振幅）
float ampY = 100;       //振動の幅（振幅）
float frequencyX = 1.0; //振動の速さ 1フレームあたり何度進むか（角速度）
float frequencyY = 1.0; //振動の速さ 1フレームあたり何度進むか（角速度）
float angleX = 0;        //現在の角度
float angleY = 0;        //現在の角度
float radius = 5.0;

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
  
  angleX += frequencyX; //1フレームあたり角度frequencyXだけ角度を増加
  angleY += frequencyY; //1フレームあたり角度frequencyYだけ角度を増加
  
  //振動中の物体の位置 ＝ 中心座標 ＋ 振幅 * sin( 現在の角度 ) //cosの場合は振幅の位置から開始する
  x = centerX + ampX * sin( radians(angleX) );
  y = centerY + ampY * cos( radians(angleY) );
  
  
  fill(0);
  ellipse(x,y,radius,radius);
  
}