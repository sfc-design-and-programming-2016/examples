/*
関数を作る
これまで、draw()やellipse()などあらかめ用意された関数を使用してきた。
独自の関数をつくり、使用する方法を学ぶ。
*/

void setup() {
  size(640, 640);
  noFill();
  stroke(255);
}

void draw() {
  
  
  background(51);
  
  //定義した関数「doubleCircle」を実行。定義の中身はスケッチの末尾に
  doubleCircle();
  
}

//関数「doubleCircle」の定義
void doubleCircle(){
  ellipse(width/2,height/2,30,30);
  ellipse(width/2,height/2,60,60);
}


/*
関数定義の例

1. 一般的な関数の定義
================================
[戻り値の型] [関数名] ([パラメータ]) {
  
  内部の処理
  
  return [戻り値];
  
}
================================

2. 戻り値がない関数の定義
================================
void [関数名] ([パラメータ]) {
  
  内部の処理
  
}
================================

3. 戻り値もパラメータもない関数
================================
void [関数名] () {
  
  内部の処理
  
}
================================

*/