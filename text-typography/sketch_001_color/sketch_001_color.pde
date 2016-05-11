size(300,300);
background(255);

fill(0);
textSize(32);

//ループで位置をずらしながら色を黒から白へモーフィングする
for(int i=0; i<255; i+=32){
  fill(i);
  text("Processing",10,i+50);
  
}