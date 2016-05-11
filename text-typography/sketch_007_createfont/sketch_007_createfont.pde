size(400,400);
background(255);

PFont times_roman;

//createFont関数にsketch_006_localfontlistで表示された
//フォント名(Times-Roman)とベースのサイズ（32)を指定して、
//プログラム中で使用するフォントを作成し、times_roman変数に代入する。

times_roman = createFont("Times-Roman",32);

//textFont関数で、描画に適用されるフォントを指定

textFont(times_roman);

fill(0);
text("Processing is flexible.", 16, 100);