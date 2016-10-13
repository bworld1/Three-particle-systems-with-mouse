float x1, x2, x3, xc, y1, y2, y3, yc, lnth;

class Triangles extends Particle {
  Triangles(PVector l) {
    super (l);
    velocity = new PVector(random(-5,20), random(-8,8));
  }
  
  void bounce() {
    locX = location.x;
    locY = location.y;
    if ((location.x > width - 18) || (location.x < 18)) {
      velocity.x = velocity.x * -.8;
      lifeSpan -= 20;
    }
    if (location.y < 18) {
      location.y = 14.0;
      velocity.y = velocity.y * -.8;
      lifeSpan -= 20;
    }
    if (location.y > height-14) {
      location.y = 1016.0;
      velocity.y = velocity.y * -.8;
      lifeSpan -= 20; 
    }
    
  }
  
  void display() {
//    ellipseMode(CENTER);
    fill(nRed, nGreen, nBlue);
    stroke(0);
    strokeWeight(2);
    lnth = sin(radians(60))*18;
    x1 = location.x;
    y1 = location.y;
    x2 = x1 - lnth;
    y2 = y1 - 9.0;
    x3 = x1;
    y3 = y1 - 18.0;
    xc = (x1+x2+x3)/3.0;
    yc = (y1+y2+y3)/3.0;
    pushMatrix();
    translate(xc,yc);
    float theta = map(xc, 0, width, 0, TWO_PI*8);
    rotate(theta);
    triangle(0.0,9.0,-1*lnth,0.0,0.0,-9.0); 
    popMatrix();
  }
  
  
}  