class Particle {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float alpha;

  Particle() {
    location = new PVector(400, 410);
    acceleration = new PVector(random(-0.0002, -0.02), 0.02);
    velocity = new PVector(random(-4, 4), random(-4, 0));
    lifespan = random(200-255);
    alpha = 255;
  }

  boolean finished() {
    return alpha < 0;
  }

  void reload() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= -2.0;
    alpha -= 5.0;
  }

  void render() {
    stroke(0, lifespan);
    fill(252, 173, 179, lifespan);
    ellipse(location.x, location.y, 40, 40);
  }

  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
