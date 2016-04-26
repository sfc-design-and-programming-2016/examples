size(200,200);
background(0);
noFill();
stroke(255);

strokeWeight(10);


for(int i=10; i<width; i+=15){
  stroke(i,0,64,200);
  line(i, 0, i, height);
  stroke(64,0,i,200);
  line(0, i, width, i);
}