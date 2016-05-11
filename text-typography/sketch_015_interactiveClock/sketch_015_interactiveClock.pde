/*
[タイポグラフィとインタラクション]
ランダムに表示された数字に時刻の表示を埋め込む。
マウスを押している間、時刻以外を示す数字は０を表示する。
（参照）時刻の取得 
https://processing.org/reference/hour_.html

（参照）数値を文字列に変換するstr関数
https://processing.org/reference/strconvert_.html

*/

int hour;
int min;
int sec;

PFont times_roman;
String s_hour ="";
String s_min ="";
String s_sec ="";
String random ="";

void setup(){
 size(400,400);
 background(255);
 
 times_roman = createFont("Times-Roman",40);
 textFont(times_roman);
 noStroke();
 
}

void draw(){
  
  hour = hour();
  min = minute();
  sec = second();
  
  background(0);
  if(hour<10){
    s_hour  = "0"+str(hour);
  }
  else{
    s_hour  = str(hour);
  }
  
  if(min<10){
    s_min  = "0"+str(min);
  }
  else{
    s_min  = str(min);
  }
  
  if(sec<10){
    s_sec  = "0"+str(sec);
  }
  else{
    s_sec  = str(sec);
  }
  
  random="";
  for(int i=0; i<250; i++){
   if(mousePressed){
     random += "0";
   }
   else{
     random += str( int(random(0,10))); 
   }
  }
  
  String s1 = random.substring(0,46);
  String s2 = random.substring(40,76);
  String s3 = random.substring(80,116);
  String s4 = random.substring(120,250);
  
  textLeading(46);
  text(s1 + s_hour + s2 + s_min + s3 + s_sec + s4, 10, 0, width, height+50);
  
  
  
}