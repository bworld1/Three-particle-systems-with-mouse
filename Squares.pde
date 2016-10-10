// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Squares extends Particle {

  // We could add variables for only Confetti here if we so

  Squares(PVector l) {
    super(l);
    velocity = new PVector(random(-20,5), random(-8,8));    
  }

  // Inherits update() from parent

  // Override the display method
  void display() {
    rectMode(CENTER);
    fill(nRed, nGreen, nBlue, 255);
    stroke(0,255);
    strokeWeight(2);
    pushMatrix();
    translate(location.x, location.y);
    float theta = map(location.x, 0, width, 0, TWO_PI*8);
    rotate(theta);
    rect(0, 0, 18, 18);
    popMatrix();
  }
}