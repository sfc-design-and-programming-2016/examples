ArrayList<Particle> particles;

void setup(){
 size(600,600);
 particles = new ArrayList<Particle>();
 noStroke();
}

void draw(){
 background(0);
 
 Particle p = new Particle(width/2, height, 6,
                                  random(-1,1),random(-10,-150),
                                  color(random(255), random(255), random(255)));
 particles.add(p);
 
 for(int i = 0; i<particles.size(); i++){  
   particles.get(i).applyForce();
   particles.get(i).update();
   particles.get(i).display();
 }
}



class Particle{
 PVector position;
 PVector velocity;
 PVector force;
 float d;
 float vx;
 float vy;
 color col;
 
 Particle(float _x, float _y, float _d, float _vx, float _vy, color _col){
   position = new PVector(_x, _y);
   velocity = new PVector(_vx, _vy);
   force = new PVector(0,0);
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
     force = new PVector(0, 0.1);
     velocity.add(force);
 }
 
}