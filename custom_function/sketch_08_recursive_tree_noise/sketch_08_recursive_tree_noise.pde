
float theta;            //角度をradianに変更し値を格納する
int n = 8;              //枝分かれの回数（再帰の実行回数）
float treeSize = 120;   //幹の部分の長さ

float noiseOffset = 0;
float noiseStep = 0.1;
float noiseRatio = 0.6; //0〜1の値。どの程度noiseの影響を強く受けるか
int seed =0;

void setup() {
  size(640, 700);
  stroke(255);
}

void draw() {
  background(0);
  noiseOffset = 0;

  //枝が分岐する時の角度をマウスの座標から計算
  float a = (mouseX / (float) width) * 90;
  
  theta = radians(a);
  translate(width/2,height);    // ウィンドウの下端、左右中央をに原点を移動
  line(0,0,0,-treeSize);        // 原点(0,0)から(0, -treeSize)に線を引く
  translate(0,-treeSize);       // 原点を(0, -treeSize)に移動
  branch(treeSize , n);         // branch関数を実行
}

void branch(float h, int n) {
  
  
  if (n > 0) {
    
    //右に分岐する枝を描く
    float ratioR = noise(noiseOffset) * noiseRatio + (1.0-noiseRatio)*0.9; 
    float hR = h * ratioR;
    
    pushMatrix();    
    rotate(theta+radians(5)*ratioR);       // 座標をtheta回転させる
    line(0, 0, 0, -hR);   // 原点(0,0)から(0, -h)に線を引く
    translate(0, -hR);    // 原点を(0, -h)に移動
    branch(hR, n-1);      // branch関数を実行
    popMatrix();
    noiseOffset +=  noiseStep;
    
    //左に分岐する枝を描く
    float ratioL = noise(noiseOffset) * noiseRatio + (1.0-noiseRatio)*0.9; 
    float hL = h * ratioL;
    
    pushMatrix();
    rotate(-theta+radians(-5)*ratioL);      // 座標を-theta回転させる
    line(0, 0, 0, -hL);   // 原点(0,0)から(0, -h)に線を引く
    translate(0, -hL);    // 原点を(0, -h)に移動
    branch(hL, n-1);      // branch関数を実行
    popMatrix();
    noiseOffset +=  noiseStep;
  }
}

void keyPressed(){
  
  noiseSeed(int(random(10)));
  treeSize =  int(random(90,180));
  noiseRatio = random(0.1,0.9);
  
}