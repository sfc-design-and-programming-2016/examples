void setup(){
  size(400,400);
  background(0);
  
  noFill();
}


void draw(){
  
  // curveVertex()関数について
  // curveVertex()関数はvertex()関数と同様に頂点を指定します。
  // beginShape()関数とendShape()関数のペアで挟んで実行します。
  // curveVertex()関数で頂点を指定すると隣接する頂点間をなめらかにつなぐ曲線で描かれます。
  // ただし、最初に指定された頂点と最後に指定された頂点は隣接する片側の頂点がないため描画されません。（v1とv4）
  // これを回避するためには、v1とv4を重複して指定します。
  // curveVertex()関数を使うときはbeginShape()関数のパラメータは無効です。
  
  stroke(255,0,0);
  strokeWeight(1);
  beginShape();
  curveVertex(20,20); //v1
  curveVertex(20,20); //v1
  curveVertex(180,20);//v2
  curveVertex(180,180);//v3
  curveVertex(20,180);//v4
  curveVertex(20,180);//v4
  endShape();
  
  stroke(255,255,255);
  strokeWeight(4);
  beginShape(POINTS);
  vertex(20,20); //v1
  vertex(180,20);//v2
  vertex(180,180);//v3
  vertex(20,180);//v4
  endShape();
  
  
}