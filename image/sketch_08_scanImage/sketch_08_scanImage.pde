PImage img;
boolean showSlit = false;

void setup() {
  size(640, 426);
  stroke(255, 102);

  img = loadImage("photo.jpg");
  image(img, 0, 0);
}

void draw() {
  if(showSlit){
    image(img, 0, 0);
    fill(0);
    rect(0,0,width,mouseY-1);
    rect(0,mouseY,width,height-mouseY);
  }
  else{
    for(int i = 0; i < width; i++) {  
      color c = img.get(i,mouseY);
      stroke(c);
      line(i, 0, i, height);
    }
    stroke(255, 102);
    line(0, mouseY, width, mouseY); 
  }
  
}

void keyPressed(){
  
  if(key == 'p'){
    showSlit = !showSlit;
  }

  
}