PImage img;
int mosaicSize = 30;
boolean showDot = false;
boolean useInvertColor = false;

void setup() {
  size(640, 426);
  noStroke();
  img = loadImage("photo.jpg");
  
}

void draw() {
  background(0);
  image(img,0,0);
  
  mosaicSize = mouseX/2 + 4; 

  for(int j = 0; j < height; j+=mosaicSize) {  
    for(int i = 0; i < width; i+=mosaicSize) {  
      color c = img.get(i,j);
      if(showDot){
        fill(255,0,0,200);
        ellipse(i,j,3,3);
      }
      else{
        if(useInvertColor){
          fill(255-red(c),255-green(c),255-blue(c));
        }
        else{
          fill(c);
        }
        rect(i, j, mosaicSize, mosaicSize);
      }
    }
  }
  
  //show message
  fill(255);
  text("press p: show dot at the pixel's position",5,20);
  text("press i: use inverted colors",5,40);

}

void keyPressed(){
  
  if(key == 'p'){
    showDot = !showDot;
  }
  
  if(key == 'i'){
    useInvertColor = !useInvertColor;
    showDot = false;
  }
  
}