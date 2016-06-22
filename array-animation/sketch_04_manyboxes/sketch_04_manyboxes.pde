int num = 500;

float[] X = new float[num];
float[] Y = new float[num];
float[] VX = new float[num];
float[] VY = new float[num];

void setup(){
 size(400,400);
 
 for(int i=0; i<num; i++){
   X[i] = random(width);
   Y[i] = random(height);
   VX[i] = random(-5,5);
   VY[i] = random(-5,5);
 }

}

void draw(){
  background(255);
  
  fill(0);
  for(int i=0; i<num; i++){
    if(X[i] > width -10){
      VX[i] = VX[i] * -1;
      X[i] = width - 10; 
    }
    if(X[i] < 0){
      VX[i] = VX[i] * -1;
      X[i] = 0; 
    }
    if(Y[i] > height -10){
      VY[i] = VY[i] * -1;
      Y[i] = height - 10; 
    }
    if(Y[i] < 0){
      VY[i] = VY[i] * -1;
      Y[i] = 0; 
    }
    X[i] = X[i]+VX[i];
    Y[i] = Y[i]+VY[i];
    rect(X[i],Y[i],10,10);
  }

}