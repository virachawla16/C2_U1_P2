PVector Position;
PVector Velocity;
//Particle par;
Particle Par[] = new Particle [110];
ArrayList<Particle> pList = new ArrayList<Particle>();


void setup() {
  size(800, 800);

  for (int i = 0; i< 110; i++)
  {
    pList.add(new Particle());

    //Particle Par[] = new Particle [110];
    //par = new Particle();
    
    }
    for (int v = 0; v < 110; v++) {
      Par[v] = new Particle();
  }
}
void draw() {
  background(116, 207, 255);

  for (int i = 0; i < 110; i++) {
    Par[i].render();
    Par[i].reload();

    //if (Par.finished(); {
    //  Par.remove(i);
  }
  //fill(160,29,44);
  fill(252, 202, 161);
  triangle(400, 410, 250, 800, 550, 800);
}
