// 2次元の等速運動モデル
// 任意の方向の速度vはx方向の速度vxとy方向の速度vyの合成である。
// https://github.com/sfc-design-and-programming-2016/examples/wiki/動き-2次元の等速運動モデル

float vx = 1;  //x方向の物体の速度 1フレームあたり何ピクセル進むのか pixel/frame
float vy = 1;  //y方向の物体の速度 1フレームあたり何ピクセル進むのか pixel/frame
float x = 200; //物体の位置x ここでの入力された値は初期の位置
float y = 200; //物体の位置y ここでの入力された値は初期の位置
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
  y += vy;  // 1フレームあたりvyピクセル進ませる
  
  //画面外に、はみ出た時の処理
  
  if(x > width-radius){  //右端からはみ出た時
    vx *= -1;            //速度を逆向きにする
    x = width-radius;    //はみ出る直前の位置に戻す
  }
  
  if(x < radius){        //左端からはみ出た時
    vx *= -1;            //速度を逆向きにする
    x = radius;          //はみ出る直前の位置に戻す
  }
  
  // 上端からはみ出た時の処理を書く
  if(y < radius){
    
    
  }
  
  // 下端からはみ出た時の処理を描く
  if(y > height - radius){
    
    
  }
  
  ellipse(x,y,radius,radius);
  
}