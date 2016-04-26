size(400,400);
background(0);
noFill();
stroke(255);

for(int i=10; i<400; i+=10){
  ellipse(0,height/2,i,i);
}

strokeWeight(4);

for(int i=10; i<400; i+=15){
  ellipse(width,height/2,i,i);
}