/**
 * Noise Wave
 * by Daniel Shiffman.  
 * 
 * Using Perlin Noise to generate a wave-like pattern. 
 */

float yoff = 0.0;        // 2nd dimension of perlin noise

void setup() {
  size(640, 360);
}

void draw() {
  background(51);

  fill(255);
  
  beginShape(); 
  
  float xoff = 0;
  
  //2次元のパーリンノイズを利用して自然な波を表現する
  for (float x = 0; x <= width; x += 10) {
    //xoffはx方向に進むに連れ一定量加算する
    //yoffは時間が進むに連れ一定量加算する
    //map()関数で 0 - 1の変化を 200 - 300にの変化に増幅している 
    float y = map(noise(xoff, yoff), 0, 1, 200,300);
    vertex(x, y); 
    xoff += 0.05;
  }

  yoff += 0.01;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}