Particle p;        //オブジェクト宣言    Particleクラスのオブジェクトpを宣言

void setup(){
 
  size(300,300);
  noStroke();
  
  p = new Particle();    // pに Particleクラスからオブジェクトを生成（コンストラクト）。
  p.x = 133.0;           // pの変数x,y,dに値を入力（pの後にドットをつけて変数にアクセスする。）
  p.y = 150.0;
  p.d = 50.0;
}
 
void draw(){
  
  background(0);
  p.display();           //pの関数display()を実行させ、現在地に描画させる
                         // （pの後にドットをつけて関数を実行する。）
}

class Particle{
  float x;
  float y;
  float d;
  
  void display(){
    ellipse(x, y, d, d); 
  }
  
}