int num = 700;

//重力はすべての物体に等しく作用する下向きの加速度なので
//配列でなく変数。
float gravity = 0.3;

float[] X = new float[num];
float[] Y = new float[num];
float[] VX = new float[num];
float[] VY = new float[num];

float[] r = new float[num];
float[] g = new float[num];
float[] b = new float[num];


void setup(){
 size(400,400);
 
 for(int i=0; i<num; i++){
   X[i] = random(width);
   Y[i] = random(height);
   VX[i] = random(-5,5);
   VY[i] = random(-5,5);
   
   r[i] = random(255);
   g[i] = random(255);
   b[i] = random(255);
   
 }
  noStroke();
  background(0);

}

void draw(){
  
  //背景をの不透明度を下げてブラー処理
  fill(0,0,0,32);
  rect(0,0,width,height);
  
  for(int i=0; i<num; i++){
    if(X[i] > width -2){
      VX[i] = VX[i] * -1;
      X[i] = width - 2; 
    }
    if(X[i] < 2){
      VX[i] = VX[i] * -1;
      X[i] = 2; 
    }
    if(Y[i] > height -2){
      VY[i] = VY[i] * -1;
      Y[i] = height - 2; 
    }
    if(Y[i] < 2){
      VY[i] = VY[i] * -1;
      Y[i] = 2; 
    }
    
    // すべての物体のY方向の速度を重力で加速する
    VY[i] = VY[i] + gravity;
    
    X[i] = X[i]+VX[i];
    Y[i] = Y[i]+VY[i];
    
    fill(r[i],g[i],b[i]);
    ellipse(X[i],Y[i],4,4);
  }

}