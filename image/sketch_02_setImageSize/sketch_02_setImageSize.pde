PImage img;

void setup() {
  size(640, 426);
}

void draw() {
  background(0);
  img = loadImage("photo.jpg");
  image(img, width/4, height/4, width/2, height/2);
}
