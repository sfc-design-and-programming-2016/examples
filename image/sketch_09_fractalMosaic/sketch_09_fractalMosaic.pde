PImage img;
int mosaicWidth = 30;
int mosaicHeight = 20;

void setup() {
  size(640, 426);
  noStroke();
  background(0);
  img = loadImage("photo.jpg");
}

void draw() {
  for(int j = 0; j < height; j+=mosaicHeight) {  
    for(int i = 0; i < width; i+=mosaicWidth) {  
      color c = img.get(i,j);
      tint(red(c), green(c), blue(c));
      image(img, i, j, mosaicWidth, mosaicHeight);
    }
  }
}