PImage img;

void setup() {
  size(640, 426);
}

void draw() {
  img = loadImage("photo.jpg");
  image(img, 0, 0);
}
