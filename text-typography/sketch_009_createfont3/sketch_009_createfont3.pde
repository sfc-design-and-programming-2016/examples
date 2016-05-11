size(400,400);
background(255);

PFont georgia;

//dataフォルダ内にあるfontファイルを読みこませる場合は、
//createFont関数の第１パラメータにフォントファイル名を記述する。
//この例では「Georgia.ttf」をdataフォルダに保存してある。
//自分のPCにある任意のフォントをdataフォルダに移し、
//フォント名を変更して実行してください。

georgia = createFont("Georgia.ttf",32);

//textFont関数で、描画に適用されるフォントを指定

textFont(georgia);

fill(0);
text("Processing is flexible.", 16, 100);