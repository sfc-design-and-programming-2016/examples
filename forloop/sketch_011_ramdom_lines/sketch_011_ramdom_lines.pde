size(800,200);
background(0);
noFill();

strokeWeight(1);

colorMode(HSB,800,255,255);
//colorMode: see the reference
//https://processing.org/reference/colorMode_.html

for(float i=1; i<width; i+=3){
  stroke(i,255,255);
  line(i, 0, i, height);

}