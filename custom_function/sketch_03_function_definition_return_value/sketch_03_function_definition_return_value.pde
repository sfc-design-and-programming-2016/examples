
void setup() {
  size(640, 640);
  noFill();
  stroke(255);
}

void draw() {
  
  background(51);
  
  //2地点の距離を求める関数distanceを実行
  //(100,100)と(200,200）の距離を計算して出力
  float dist = distance(100,100,200,200);
  println(dist);
  
  float dist2 = distance(width/2, height/2, mouseX, mouseY);
  
  point(width/2,height/2);
  line(width/2, height/2, mouseX, mouseY);
  text(dist2, mouseX, mouseY);
  
}

//関数「distance」の定義
float distance(float x1, float y1, float x2, float y2){
  
  float result = 0;
  
  //ピタゴラスの定理で2地点の距離を求める
  result = (x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1);
  result = sqrt(result);
  
  return result;
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