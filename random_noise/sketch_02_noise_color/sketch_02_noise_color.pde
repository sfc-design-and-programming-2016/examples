float noise_param = 0;
float noise_step = 0.01;

void setup(){
 size(800,600);
 strokeWeight(3);
 colorMode(HSB);
 noLoop();
  
}


void draw(){
  background(0);
  
  for(int i=0; i<width; i+=3){
    
    float hue = noise(noise_param)*255;
    stroke(hue,255,255);
    line(0,i,width,i);
    noise_param += noise_step;
    
  }
  
}