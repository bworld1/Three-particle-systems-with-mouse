class ParticleSystem {
  ArrayList<Color> colors;
  ArrayList<Particle> particles;

  PVector origin;
  ParticleSystem(PVector location) {
    origin = location.copy();
    colors = new ArrayList<Color>();
    particles = new ArrayList<Particle>();
  }
  
  void addParticle() {
    colors.add(new Color(int(random(200,255)), int(random(0,255)), int(random(0,255))));
    particles.add(new Particle(origin));
  }
    
  void addSquareParticle() {
    colors.add(new Color(int(random(0,255)), int(random(200,255)), int(random(0,255))));
    particles.add(new Squares(origin));
  }  
    
  void addTriangleParticle() {
    colors.add(new Color(int(random(0,255)), int(random(0,255)), int(random(150,255))));
    particles.add(new Triangles(origin));    
  }
  
  void applyForce(PVector force) {
    for (Particle p : particles) {
      p.applyForce(force);
    }
  }
  
  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      Color c = colors.get(i);
      c.mkCol(c.red, c.green, c.blue);
      p.run();

      if (lifeSpan <=0) {
        particles.remove(i);
        colors.remove(i);
        lifeSpan = 255;
      }
    } 
  }
}

  