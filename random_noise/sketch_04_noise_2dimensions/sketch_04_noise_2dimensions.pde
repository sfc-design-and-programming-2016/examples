float noise_param_x = 0;
float noise_param_y = 0;
float noise_step = 0.05;
int rectSize = 3;

void setup(){
 size(800,600);
 noStroke();
 noLoop();
  
}


void draw(){
    
  background(0);
  for(int y = 0; y < height; y+=rectSize){
    for(int x = 0; x < width; x+=rectSize){
      
      float gray = noise(noise_param_x, noise_param_y) * 255;
      fill(gray);
      rect(x,y,rectSize,rectSize);
      
      noise_param_x += noise_step;

    }
    
    noise_param_x = 0;
    noise_param_y += noise_step;
  }
 
}