String s = "Keio SFC";

int x;
int y;
int textsize;
int h;

PFont fonta;
PFont fontb;
PFont fontc;

size(400,400);
colorMode(HSB,400,255,255,255);
background(0);

//3つのフォントを読み込む
fonta = createFont("Optima-Bold",12);
fontb = createFont("Monaco",12);
fontc = createFont("Times-Roman",12);

for(int i=0; i<500; i++){
  x = (int)random(0,width);
  y = (int)random(0,height);
  
  //フォントをランダムに選択する 0.33未満だとfonta, 0.33以上0.66未満だとfontb, それ以外fontc
  float rand = random(0,1);
  if(rand <0.33){
    textFont(fonta);
  }
  else if(rand < 0.66){
    textFont(fontb); 
  }
  else{
    textFont(fontc);
  }
  
  textsize = (int)random(6,30);
  h = (int)random(0,width);
  
  fill(h,255,255,128);
  textSize(textsize);
  text(s,x,y);
}