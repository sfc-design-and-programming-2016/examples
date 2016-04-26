size(200,200);
background(0);
noFill();
stroke(255);

strokeWeight(10);

for(int i=10; i<width; i+=15){
  stroke(i);
  line(i, 0, i, height);
}