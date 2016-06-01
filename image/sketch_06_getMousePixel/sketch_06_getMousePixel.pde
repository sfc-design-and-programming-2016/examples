PImage img;

void setup() {
  size(640, 426);
  stroke(255, 102);
  img = loadImage("photo.jpg");
}

void draw() {
  background(0);
  image(img, 0, 0);

  noStroke();
  fill(0);
  rect(20, 20, 60, 20);

  //画像からマウスの位置にあるピクセルの色を取得する
  color c = img.get(mouseX, mouseY);
  fill(red(c), 0, 0);
  rect(20, 20, 20, 20);
  fill(0, green(c), 0);
  rect(40, 20, 20, 20);
  fill(0, 0, blue(c));
  rect(60, 20, 20, 20);
  fill(c);
  rect(20,50,30,30);

  //show mouse position
  stroke(255, 102);
  line(mouseX, 0, mouseX, height);
  line(0, mouseY, width, mouseY);
  
  
}