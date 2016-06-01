
void setup(){
  size(400,400);
  stroke(255);
  noFill();
  rectMode(CENTER);
}

void draw(){

  background(0);

  //原点を画面の中心に移す
  translate(width/2,height/2);
  for(int i=0; i< 360; i+=10){
    
    pushMatrix();      //座標系を記録する
    rotate(i*PI/180);  //座標系をi度回転する
    rect(0,0,200,200);
    popMatrix();       //座標系を回転前に戻す
  }
  
}