ArrayList<ParticleSystem> systems;
float objMass = 500;
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
    for (int i = systems.size()-1; i >= 0; i--) {
    ParticleSystem ips = systems.get(i);
    if (i == 2 && ips.particles.size() < 50) {
      ips.addParticle();
    } else if (i == 1 && ips.particles.size() < 50) {
        ips.addSquareParticle();
      } else if (i == 0 && ips.particles.size() < 50) ips.addTriangleParticle();
  }

  for (ParticleSystem aps: systems) {
    PVector gravity = new PVector(0,.8);
    PVector drag = new PVector(0, -10.0);
    gravity.mult(objMass);
    aps.applyForce(gravity);
    aps.applyForce(drag);    
    aps.run();
  }      
}

  