int num = 2;

int[] X = new int[num];
int[] Y = new int[num];
int[] VX = new int[num];
int[] VY = new int[num];

void setup(){
 size(400,400);
 fill(0);
 
 X[0] = 10;
 X[1] = 20;
 VX[0] = 1;
 VY[0] = 1;
 
 X[1] = 50;
 Y[1] = 80;
 VX[1] = -1;
 VY[1] = -1;
 

}

void draw(){
  background(255);
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