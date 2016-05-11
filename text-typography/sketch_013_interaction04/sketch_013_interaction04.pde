/*
[タイポグラフィとインタラクション]
タイプされたキーを表示する。
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
  background(0);
  text(s, 10, 220);
}

void keyPressed(){
 s = s + key;
}