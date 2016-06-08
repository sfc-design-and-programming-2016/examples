int vert = 6;
float large_r = 300;
float small_r = 200;

void setup(){
  size(700,700);
  noFill();
  stroke(255);
  
}


void draw(){
  background(0);
  
  beginShape();
  
  for(int i=0; i<vert; i++){
    
    float lx = large_r * cos(TWO_PI / vert * (i-0.5)) + width/2;
    float ly = large_r * sin(TWO_PI / vert * (i-0.5)) + height/2;
    vertex(lx,ly);
    
    float sx = small_r * cos(TWO_PI / vert * (i)) + width/2;
    float sy = small_r * sin(TWO_PI / vert * (i)) + height/2;
    vertex(sx,sy);
    
  }
  
  endShape(CLOSE);
  
}