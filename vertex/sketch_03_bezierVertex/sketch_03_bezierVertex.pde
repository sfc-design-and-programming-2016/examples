void setup(){
  size(400,400);
  
  noFill();
}


void draw(){
  
  // bezierVertex()関数について
  // beginShape()関数とendShape()関数のペアで挟んで実行します。
  // bezierVertex()関数の前にかならずひとつの頂点が指定されている必要があります。
  // このサンプルではまずvertex()関数で頂点v1を指定し、
  // bezierVertex()関数を使ってv1からv4への曲線を描いています。
  // bezierVertex()関数では、3つの座標を指定します。
  // 1つめの座標と2つ目の座標は曲率を決めるためのコントロールポイントで、
  // 3つめの座標が曲線の終点です。
  
  background(0);
  
  stroke(255,0,0);
  strokeWeight(1);
  beginShape();
  vertex(20,20); //v1
  bezierVertex(180,20,mouseX,mouseY,180,180);//v2,v4,v3
  endShape();
  
  stroke(255,255,255,128);
  strokeWeight(1);
  beginShape(LINES);
  vertex(20,20); //v1
  vertex(180,20);//v2
  vertex(180,180);//v3
  vertex(mouseX,mouseY);//v4
  endShape();
  
  
}