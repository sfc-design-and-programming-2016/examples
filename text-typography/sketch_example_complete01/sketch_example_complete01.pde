
String s = "Keio SFC";

int x;
int y;
int textsize;
int h;

size(400,400);
colorMode(HSB,400,255,255,255);
background(0);

for(int i=0; i<500; i++){
  x = (int)random(0,width);
  y = (int)random(0,height);
  textsize = (int)random(6,30);
  h = (int)random(0,width);
  
  fill(h,255,255,128);
  textSize(textsize);
  text(s,x,y);
}