Particle p;
Particle p2;

void setup(){
 
  size(300,300);
  noStroke();
  
  p = new Particle(133.0, 150.0, 50.0, 5.0, 2.0, color(255,0,0)); 
  p2 = new Particle(200.0, 180.0, 60.0, -1.0, -2.0, color(255,255,0)); 
}
 
void draw(){
  
  background(0);
  p.applyForce();
  p2.applyForce();
  p.update();
  p2.update();
  p.display();
  p2.display();
  
}

class Particle{
  PVector position;
  PVector velocity;
  PVector force;
  float d;
  color col;
  
  Particle(float _x, float _y, float _d, float _vx, float _vy, color _col){
    position = new PVector( _x, _y);
    velocity = new PVector( _vx, _vy);
    force = new PVector(0,1);
    d = _d;
    col = _col;
  }
  
  void display(){
    fill(col);
    ellipse(position.x, position.y, d, d); 
  }
  
  void update(){
    position.add(velocity);
    
    if(position.x < d/2){
      velocity.x *= -1;
      position.x = d/2;
    }
    
    if(position.x > width - d/2){
      velocity.x *= -1;
      position.x = width - d/2;
    }
    
    if(position.y < d/2){
      velocity.y *= -1;
      position.y = d/2;
    }
    
    if(position.y > height - d/2){
      velocity.y *= -1;
       position.y = height - d/2;
    }
    
  }
  
  void applyForce(){
    velocity.add(force);
  }
  
}