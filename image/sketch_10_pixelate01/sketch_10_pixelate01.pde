PImage img;
int mosaicSize = 12;

void setup() {
  size(640, 426);
  noStroke();
  img = loadImage("photo.jpg");

}

void draw() {
  background(0);
  for(int j = 0; j < height; j+=mosaicSize) {  
    for(int i = 0; i < width; i+=mosaicSize) {  
      color c = img.get(i,j);
      fill(c, 127);
      //brightness関数は、色から明るさを検出する
      ellipse(i, j, brightness(c)/6.0, brightness(c)/6.0);
    }
  }
}