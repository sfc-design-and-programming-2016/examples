PImage img;

void setup() {
  size(640, 426);
}

void draw() {
  background(0);
  img = loadImage("photo.jpg");
  noTint();
  image(img, 0, 0);
  float r = 255 * mouseX/width;
  float g = 255 * mouseY/height;
  tint(r, g, 255);
  image(img, width/2, 0);
  
  //show parameters
  fill(255);
  text("tint color r is "+ r,20+5,20);
  text("tint color g is "+ g,20+5,40);
  
  noTint();
  noStroke();
  fill(r,g,255);
  rect(20,60,25,25);
}