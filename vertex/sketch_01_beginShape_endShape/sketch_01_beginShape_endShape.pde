void setup(){
  size(400,400);
  background(0);
  
  noFill();
}


void draw(){
  
  // vertex(頂点)について
  // vertex()関数に座標を与えて頂点を作ります。
  // 頂点は単独では、なにも描画されません。
  // 頂点を可視化するには、beginShape()関数とendShape()関数を使います。
  // beginShape()関数とendShape()関数は必ずペアで使用します。
  // beginShape()関数を始めに実行し、vertex()関数を実行して頂点を指定し、
  // 最後にendShape()関数を実行します。
  // 次の４つのパターンを見てみましょう。
  
  stroke(255,0,0);
  strokeWeight(1);
  beginShape();
  vertex(20,20);
  vertex(180,20);
  vertex(180,180);
  vertex(20,180);
  endShape();
  
  stroke(0,0,255);
  strokeWeight(1);
  beginShape();
  vertex(220,20);
  vertex(380,20);
  vertex(380,180);
  vertex(220,180);
  endShape(CLOSE);
  
  stroke(0,255,0);
  strokeWeight(4);
  beginShape(POINTS);
  vertex(20,220);
  vertex(180,220);
  vertex(180,380);
  vertex(20,380);
  endShape();
  
  stroke(255,255,255);
  strokeWeight(1);
  beginShape(LINES);
  vertex(220,220);
  vertex(380,220);
  vertex(380,380);
  vertex(220,380);
  endShape();
  
  
}