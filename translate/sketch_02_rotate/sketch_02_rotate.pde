void setup(){
  size(400,400);
  stroke(255);
}

void draw(){

  background(0);
  
  //(10,10)から(100,10)に線を引く
  line(10,10,100,10);
  
  //座標系の原点を中心に30度回転させる
  rotate(30*PI/180); // 度からラジアンへの変換 rad ＝ deg*PI/180;
  
  
}