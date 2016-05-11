/*
[タイポグラフィとインタラクション]
タイプされたキーを表示する。
テキストカーソルを表示し、Backspaceで1文字削除する。
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
  //カーソルを表現する四角形を描く
  //x座標は、textWidth関数を使って入力済みの文字列から計算する。
  rect(textWidth(s)+10,190,2,32);
}

void keyPressed(){
 
  if(key == BACKSPACE && s.length()>0){
    //文字列のいち部分を抜き出すsubstring関数の使い方
    // 例
    // s = "ABCDE";
    // s = s.substring(0,3);
    //sの先頭から3番目の文字までを抜き出し、sに"ABC"が代入される 
    s = s.substring(0,s.length()-1);
  }
  else{
    s = s + key;
  }
}