size(400,400);
background(0);
noFill();
stroke(255);


for(int i=10; i<width; i+=15){
  if(i%2==0){
    //iが偶数（2で割った余りが0）
    strokeWeight(3);
  }
  else{
    strokeWeight(1);
  }
  ellipse(width/2,height/2,i,i);
}