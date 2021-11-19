Star [] Allen;
Spaceship Yao;

public void setup() {
  noStroke();
  size(400, 400);
  Allen = new Star[100];
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
  Yao.show();
  if (keyPressed) {
    if (key == 'h') {
      Yao.hyper();
    }
    
    if (key == 'v') {
      Yao.accelerate(1);
    }
    
    if (key == 'w') {
      Yao.move();
    }
    
    if (key == 'a') {
      Yao.turn(-10);
    }
    
    if (key == 's') {
      Yao.accelerate(-1);
    }
    
    if (key == 'd') {
      Yao.turn(10);
    }
  }
}
