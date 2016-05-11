/*
[タイポグラフィとインタラクション]
マウスが動いている時だけマウスの位置に文字を表示する
*/

PFont times_roman;

void setup(){
 size(400,400);
 background(255);
 
 times_roman = createFont("Times-Roman",32);
 textFont(times_roman);
 noStroke();
 fill(255);
 rect(0,0,width,height);
}

void draw(){
  
  fill(255,255,255,30);
  rect(0,0,width,height);
  
}

void mouseMoved(){
  
  fill(0);
  text("mouse is here.", mouseX, mouseY);
  
}