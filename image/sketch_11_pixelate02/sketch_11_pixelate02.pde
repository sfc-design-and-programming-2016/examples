PImage img;
int mosaicSize = 10;

void setup() {
  size(640, 426);
  noStroke();
  img = loadImage("photo.jpg");
  rectMode(CENTER);
  smooth();
}

void draw() {
  background(0);
  for(int j = 0; j < height; j+=mosaicSize) {  
    for(int i = 0; i < width; i+=mosaicSize) {  
      color c = img.get(i,j);
      fill(c, 127);
      pushMatrix();
      translate(i, j);
      rotate(brightness(c));
      rect(0, 0, mosaicSize,mosaicSize);
      popMatrix();
    }
  }
}