PImage img;

void setup() {
  size(640, 426);
}

void draw() {
  background(0);
  img = loadImage("photo.jpg");
  
  for(int i = 0; i < 8; i++) {
    int xpos = i * width / 8;
    fill(0);
    rect(xpos, 0, width, height);
    tint(255,255,255, i * 32);
    image(img, xpos, 0);
  }
}
