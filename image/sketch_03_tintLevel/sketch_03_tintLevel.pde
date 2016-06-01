PImage img;

void setup() {
  size(640, 426);
}

void draw() {
  background(0);
  img = loadImage("photo.jpg");
  noTint();
  image(img, 0, 0);
  float tintval = 255 * mouseX/width;
  tint(tintval);
  image(img, width/2, 0);
  
  text("tint value is " + tintval,width/2+5,20);
}