int n = 20;

size(400,400);

colorMode(HSB,400,400,400);

for(int j=0;  j<n; j++){
  
  for(int i=0; i<n; i++){
    int x = 20 * i + 10;
    int y = 20 * j + 10;
    fill(x,y,400);
    ellipse(x, y, 10, 10);
    
  }
  
}