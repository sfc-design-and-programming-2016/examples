int x = 100;   //tailの開始位置
int u = 14;    //tailを構成する直線の数
float a = -5;  //直線同士の角度


void setup(){
  
  size(200, 200);
  stroke(255, 255, 255, 204);
 
}

void draw(){

  background(51);
  
  tail(x, u, a);
}


void tail(int xpos, int units, float angle){
 
  pushMatrix();
  
  translate(xpos, 0);      //原点(0,0)を(xpos,0)に移動する
  
  for(int i = units; i > 0; i--){
      strokeWeight(i);
      line(0, 0, 0, 8);    //原点(0,0)から(0,8)へ線を引く
      translate(0, 8);     //原点を(0,8)へ移動する
      rotate(radians(angle));       //原点を中心にangleだけ回転させる
  }
  
  popMatrix();
  
}