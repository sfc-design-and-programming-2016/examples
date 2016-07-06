ArrayList<Particle> particles;
PImage img;

void setup(){
 size(600,600);
 particles = new ArrayList<Particle>();
 img = loadImage("texture.png");
 noStroke();
}

void draw(){
 background(0);
 
 Particle p = new Particle(width/2, height-200, 6,
                                  random(-1,1),random(-0.1,0.1),1.0, img);
 particles.add(p);
 
 for(int i = 0; i<particles.size(); i++){
   if(particles.get(i).isDead){
    particles.remove(i); 
   }
   particles.get(i).applyForce();
   particles.get(i).update();
   particles.get(i).display();
 }
}



class Particle{
 PVector position;
 PVector velocity;
 PVector force;
 PImage texture;
 float d;
 float vx;
 float vy;
 color col;
 float lifetime;
 boolean isDead;
 
 Particle(float _x, float _y, float _d, float _vx, float _vy, float _lifetime, PImage _texture){
   position = new PVector(_x, _y);
   velocity = new PVector(_vx, _vy);
   force = new PVector(0,0);
   d = _d;
   lifetime = _lifetime;
   isDead = false;
   texture = _texture;
 }
 
 void display(){
   imageMode(CENTER);
   tint(255,255*lifetime);
   image(img,position.x,position.y,30,30);
 }
 void update(){
   lifetime -= 0.005;
   
   if(lifetime < 0){
     isDead = true;
   }
   
   position.add(velocity);
  
 }
 
 void applyForce(){
     force = new PVector(0.005, -0.01);
     velocity.add(force);
 }
 
}