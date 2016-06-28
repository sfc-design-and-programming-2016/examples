Particle p;
Particle p2;

void setup(){
 
  size(300,300);
  noStroke();
  
  //コンストラクタに引き渡すパラメータに色を設定
  p = new Particle(133.0, 150.0, 50.0, 5.0, 2.0, color(255,0,0)); 
  p2 = new Particle(200.0, 180.0, 60.0, -1.0, -2.0, color(255,255,0)); 
}
 
void draw(){
  
  background(0);
  p.update();
  p2.update();
  p.display();
  p2.display();
}

class Particle{
  float x;
  float y;
  float d;
  float vx;
  float vy;
  color c; //colorの変数cを追加
  
  //コンストラクタのパラメータに　color _cを追加
  Particle(float _x, float _y, float _d, float _vx, float _vy, color _c){
    x = _x;
    y = _y;
    d = _d;
    vx = _vx;
    vy = _vy;
    c = _c;     // cに初期値を設定
  }
  
  void display(){
    fill(c); //cで塗りつぶし
    ellipse(x, y, d, d); 
  }
  
  void update(){
    x = x + vx;
    y = y + vy;
    
    if(x < d/2){
      vx *= -1;
      x = d/2;
    }
    
    if(x > width - d/2){
      vx *= -1;
      x = width - d/2;
    }
    
    if(y < d/2){
      vy *= -1;
      y = d/2;
    }
    
    if(y > height - d/2){
      vy *= -1;
       y = height - d/2;
    }
    
  }
  
}