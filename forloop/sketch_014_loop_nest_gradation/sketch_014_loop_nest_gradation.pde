size(400,400);
noStroke();
colorMode(RGB,400,400,400);

background(0);
for(int j=0;  j<=height; j+=10){
  
  for(int i=0; i<=width; i+=10){
    fill(i,j,0);
    rect(i, j, 9, 9);
  }
  
}