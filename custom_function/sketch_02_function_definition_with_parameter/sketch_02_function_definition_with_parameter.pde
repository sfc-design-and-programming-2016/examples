
void setup() {
  size(640, 640);
  noFill();
  stroke(255);
}

void draw() {
  
  background(51);
  
  
  //円の中心をパラメータで指定できるようにする
  
  doubleCircle(100,100);  
  doubleCircle(540,540);
  
  //doubleCicle(mouseX, mouesY);
  
}

//関数「doubleCircle」の定義
//2つのint型のパラメータ centerX, centerYを追加

void doubleCircle(int centerX, int centerY){
  
  ellipse(centerX, centerY,30,30);
  ellipse(centerX, centerY,60,60);
  
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