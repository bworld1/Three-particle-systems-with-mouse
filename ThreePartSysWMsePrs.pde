ArrayList<ParticleSystem> systems;

void setup() {
  PVector loc1 = new PVector(50,100);
  PVector loc2 = new PVector(width/2,100);
  PVector loc3 = new PVector(width-50,100);

  size(1024,1024);
  systems = new ArrayList<ParticleSystem>();
  systems.add(new ParticleSystem(loc1));
  systems.add(new ParticleSystem(loc2));  
  systems.add(new ParticleSystem(loc3));
}  

void draw() {
  background(255);
  PVector gravity = new PVector(0,.8);
  PVector drag = new PVector(0, -10.0);
  gravity.mult(objMass);
  for (ParticleSystem ps: systems) {
    if (ps.particles.size()<100) {  
    ps.addParticle(); 
    }
  ps.applyForce(gravity);
  ps.applyForce(drag);    
  ps.run();
  }      


}

  