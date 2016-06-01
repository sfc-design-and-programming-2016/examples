void setup(){
  size(400,400);
  fill(255);
}

void draw(){

  background(0);
  
  //(0,0)の位置に円を描書く
  ellipse(0,0,50,50);
  
  //座標系の原点を画面の中心に移動させる
  translate(width/2, height/2);
  
  //(0,0)の位置に円を描書く
  ellipse(0,0,50,50);
  
  
}