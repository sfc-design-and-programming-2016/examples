float noise_param = 0;

void setup(){
 size(800,600);
 noStroke();
 colorMode(HSB);
 rectMode(CENTER);
 background(0);
  
}


void draw(){
    
    float hue = noise(noise_param)*255;
    fill(hue,255,255);
    rect(width/2,height/2,300,300);
    noise_param += frameCount*0.00001;
    
}