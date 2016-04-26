size(600,600);
background(0);
noStroke();

colorMode(HSB,255,255,255);
//colorMode: see the reference
//https://processing.org/reference/colorMode_.html

for(int i=1; i<1000; i+=1){
  int h = (int)random(0, 255);
  int x = (int)random(0,width);
  int y = (int)random(0,height);
  int w = (int)random(10,50);
  fill(h,255,255,128);
  ellipse(x, y, w, w);

}