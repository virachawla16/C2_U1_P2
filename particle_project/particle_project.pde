PVector Position;
PVector Velocity;
ParticleSystem ps = new ParticleSystem(new PVector(400,410));
//Particle Par[] = new Particle [115];
//ArrayList<Particle> pList = new ArrayList<Particle>();

 PImage sparkle; 
void setup() {
  size(800, 800,P3D);
   sparkle = loadImage("yay.png");
    sparkle.resize(300,300);


}
void draw() {
  background(0);

  ps.DrawParticle();
 
  //fill(252, 202, 161);
  fill(193, 25, 6);
  triangle(400, 410, 250, 800, 550, 800);
}
