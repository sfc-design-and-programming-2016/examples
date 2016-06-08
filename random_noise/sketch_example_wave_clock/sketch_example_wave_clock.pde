//Wave Clock
//針の長さ半径と進行角度をパーリンノイズで更新するサンプル
//マウスクリックで画面クリア


float angnoise, radiusnoise;
float angle = -PI/2;
float radius = 100;
float centerX, centerY;
float strokeCol = 254;
int strokeChange = -1;


void setup() {
  size(600, 600);
  smooth(); 
  
  centerX = width/2;
  centerY = height/2;
  
  clearBackground();
  
  angnoise = random(10);
  radiusnoise = random(10);

}

void clearBackground() {
  background(255);
}


void draw() {
  
  radiusnoise += 0.005;
  radius = (noise(radiusnoise) * 200) +1;
  
  angnoise += 0.005;
  angle += (noise(angnoise) * 6) - 3;
  if (angle > 360) { angle -= 360; }
  if (angle < 0) { angle += 360; }

  
  float rad = radians(angle);
  float x1 = centerX + (radius * cos(rad));
  float y1 = centerY + (radius * sin(rad));
  
  
  noFill();
  strokeCol += strokeChange;
  if (strokeCol > 254) { strokeChange *= -1; }
  if (strokeCol < 0) { strokeChange *= -1; }
  stroke(strokeCol, 60);
  strokeWeight(1);
  line(x1, y1, centerX, centerY);
}

void mousePressed() {
  clearBackground();
}