size(400,300);
background(255);

//描きたい文字（列）を変数にする場合は、文字列型(String型)の変数に格納する
String s = "Processing is a flexible software sketchbook for the visual arts.";

fill(0);
textSize(16);

//1行で表示
text(s,10,30);

//テキストボックス内に表示。テキストボックスは、左上の座標(10,80)、幅200、高さ100
text(s,10,80,200,100);

//テキストボックスと同じサイズの四角形
noFill();
stroke(128);
rect(10,80,200,100);