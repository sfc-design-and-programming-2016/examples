float large_r = 300;
float small_r = 200;

void setup(){
  size(700,700);
  background(0);
  
}


void draw(){
  fill(0,0,0,5);
  noStroke();
  rect(0,0,width,height);
  stroke(255);
  
  beginShape();
    
    float startX = large_r * cos(frameCount*0.01) + width/2;
    float startY = large_r * sin(frameCount*0.01) + height/2;
    float endX = small_r * cos(frameCount*0.02) + width/2;
    float endY = small_r * sin(frameCount*0.02) + height/2;
    
    curveVertex(startX,startY);
    curveVertex(width/2,height/2);
    curveVertex(endX,endY);
    curveVertex(startX,startY);
    curveVertex(width/2,height/2);
    curveVertex(endX,endY);
  
  endShape();
  
}