
float theta;            //角度をradianに変更し値を格納する
int n = 5;              //枝分かれの回数（再帰の実行回数）
float treeSize = 120;   //幹の部分の長さ

void setup() {
  size(640, 360);
  stroke(255);
}

void draw() {
  background(0);

  //枝が分岐する時の角度をマウスの座標から計算
  float a = (mouseX / (float) width) * 90f;
  
  theta = radians(a);
  translate(width/2,height);    // ウィンドウの下端、左右中央をに原点を移動
  line(0,0,0,-treeSize);        // 原点(0,0)から(0, -treeSize)に線を引く
  translate(0,-treeSize);       // 原点を(0, -treeSize)に移動
  branch(treeSize , n);         // branch関数を実行
}

void branch(float h, int n) {
  
  h *= 0.66;
  
  if (n > 0) {
    
    //右に分岐する枝を描く
    pushMatrix();    
    rotate(theta);       // 座標をtheta回転させる
    line(0, 0, 0, -h);   // 原点(0,0)から(0, -h)に線を引く
    translate(0, -h);    // 原点を(0, -h)に移動
    branch(h, n-1);      // branch関数を実行
    popMatrix();
    
    //左に分岐する枝を描く
    pushMatrix();
    rotate(-theta);      // 座標を-theta回転させる
    line(0, 0, 0, -h);   // 原点(0,0)から(0, -h)に線を引く
    translate(0, -h);    // 原点を(0, -h)に移動
    branch(h, n-1);      // branch関数を実行
    popMatrix();
  }
}

/*branch関数について
  
branch関数のパラメータは、float h, int n
float hは、描く枝の長さを計算するのに基準となる数値。

branch関数の内部処理
・原点から、hの2/3の長さの枝を2つ描く
・ひとつは、右に分岐する枝。
・ひとつは左に分岐する枝。
・描いた枝の先端の座標に原点を移動し、描いた枝の長さをhとしてbranch関数を実行（再帰）
・ひとつのbranch関数が、２つのbranch関数を実行その際、nを-1する。
・nが0以下となればそれ以上branch関数を実行しなくなり再帰が終わる。
*/