size(600,600);
background(0);
noFill();

colorMode(HSB,255,255,255);
//colorMode: see the reference
//https://processing.org/reference/colorMode_.html

for(int i=1; i<1000; i+=1){
  int h = (int)random(0, 255);
  int x1 = (int)random(0,width);
  int y1 = (int)random(0,height);
  int x2 = (int)random(0,width);
  int y2 = (int)random(0,height);
  stroke(h,255,255,128);
  line(x1, y1, x2, y2);
}