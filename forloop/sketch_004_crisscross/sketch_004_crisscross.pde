size(400,400);
background(0);
noFill();
stroke(255);

for(int i=0; i<=height; i+=10){
  line(0, i, width, height-i);
}