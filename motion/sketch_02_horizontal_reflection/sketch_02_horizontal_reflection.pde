// 水平方向に限定した等速運動モデル2
// 画面両端で跳ね返る

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
  
  //画面外に、はみ出た時の処理
  
  if(x > width-radius){  //右端からはみ出た時
    vx *= -1;            //速度を逆向きにする
    x = width-radius;    //はみ出る直前の位置に戻す
  }
  
  if(x < radius){        //左端からはみ出た時
    vx *= -1;            //速度を逆向きにする
    x = radius;          //はみ出る直前の位置に戻す
  }
  
  ellipse(x,200,radius,radius);
  
}