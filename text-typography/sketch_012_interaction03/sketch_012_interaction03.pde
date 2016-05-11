/*
[タイポグラフィとインタラクション]
マウスの位置に応じて表示する文字や色を変える。
*/

PFont times_roman;
String s ="";

void setup(){
 size(400,400);
 background(255);
 
 times_roman = createFont("Times-Roman",32);
 textFont(times_roman);
 noStroke();
 
}

void draw(){
  background(255);
  
  fill(0);
  rect(0,0,width/2,height);
  
  
  //draw text
  if(mouseX<width/2){
    fill(255);
    s = "Left";
  }
  else{
    fill(0);
    s = "Right";
  }
  text(s, mouseX, mouseY);
}