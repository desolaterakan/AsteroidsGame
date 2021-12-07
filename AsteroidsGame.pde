Star [] Allen;
ArrayList <Asteroid> Yue = new ArrayList <Asteroid>();
Spaceship Yao;

public void setup() {
  size(400, 400);
  Allen = new Star[100];
  for (int e = 0; e < 10; e++) {
    Yue.add(new Asteroid());
  }
  Yao = new Spaceship();
  for (int e = 0; e < Allen.length; e++) {
    Allen[e] = new Star();
  }
}

public void draw() {
  background(0);
  for (int e = 0; e < Allen.length; e++) {
    Allen[e].show();
  }
  
  for (int e = 0; e < Yue.size(); e++) {
    stroke(255);
    Yue.get(e).show();
    Yue.get(e).move();
    float d = dist(Yao.getX(), Yao.getY(), Yue.get(e).getX(), Yue.get(e).getY());
    if (d < 25) {
      Yue.remove(e);
    }
  }
  
  noStroke();
  Yao.show();
  if (keyPressed) {
    if (key == 'h') {
        Yao.hyper();
    }
    
    if (key == 'w') {
      Yao.accelerate(0.05);
      Yao.move();
    }
    
    if (key == 'a') {
      Yao.turn(-10);
    }
    
    if (key == 's') {
      Yao.accelerate(-0.05);
      Yao.move();
    }
    
    if (key == 'd') {
      Yao.turn(10);
    }
  }
}
