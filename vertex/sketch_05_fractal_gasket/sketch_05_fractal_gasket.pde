int depth_limit = 2;
int vert = 3;
float k = 0.5;
 
void setup() {
  size(800, 800);
  background(0);
  blendMode(ADD);
  noFill();
  stroke(200,200,255, 120);
  noLoop();
}

void draw(){
  float x = width / 2;
  float y = height / 2;
  float r = 200;
  
  fractalLoop(r, x, y, 0);
}
 
void fractalLoop(float _r, float _x, float _y, int depth) {
  
  if (depth > depth_limit) return;
  
  drawShape(_r, _x, _y);
 
  for (int i = 0; i < vert; i++) {
    float x = _r * cos(TWO_PI / vert * (i+0.5)) + _x;
    float y = _r * sin(TWO_PI / vert * (i+0.5)) + _y;
    
    fractalLoop(_r * k, x, y, depth + 1);
  }  
}
 
void drawShape(float _r, float _x, float _y) {
  
  beginShape();
  for (int i = 0; i < vert; i++) {
    
    float x = _r * cos(TWO_PI / vert * i) + _x;
    float y = _r * sin(TWO_PI / vert * i) + _y;
    
    vertex(x, y);
  }
  endShape(CLOSE);
}