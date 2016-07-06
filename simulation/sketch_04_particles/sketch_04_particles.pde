int num = 1000;

Particle[] particles = new Particle[num];

void setup(){
 size(600,600);
 noStroke();
 for(int i = 0; i<num; i++){
   particles[i] =new Particle(random(0,width), random(0,height), 3,0,0,
                                  color(random(255), random(255), random(255)));
 }
}

void draw(){
 background(0);
 for(int i = 0; i<num; i++){
   particles[i].applyForce();
   particles[i].update();
   particles[i].display();
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
  
   if(position.x < -d/2){
      position.x = width + d/2;
   }
   if(position.x > width + d/2){
     position.x = - d/2;
   }
   if(position.y < -d/2){
      position.y = height + d/2;
   }
   if(position.y > height + d/2){
     position.y = - d/2;
   }
 }
 
 void applyForce(){
   
     PVector target = new PVector(mouseX, mouseY);
     force = PVector.sub(target,position);
     float distance = force.mag();
     if(20.0 < distance){
       force.normalize();
       force.mult(100.0/pow(distance,2));
       velocity.add(force);
     }
 }
 
}