size(800,400);
background(0);
noFill();
stroke(255);

for(float i=1; i<width; i*=1.2){
  line(i, 0, i, 200);
  line(width-i,200,width-i,height);
}