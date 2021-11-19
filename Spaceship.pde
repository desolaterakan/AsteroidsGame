class Spaceship extends Floater {
  public Spaceship() {
    corners = 4;
    xCorners = new int[] {-8, 16, -8, -2};
    yCorners = new int[] {-8, 0, 8, 0};
    myColor = 255;
    myCenterX = 200;
    myCenterY = 200;
    myXspeed = 5 * Math.cos(myPointDirection);
    myYspeed = 5 * Math.sin(myPointDirection);
    myPointDirection = 0;
  }
  
  public void hyper() {
    myCenterX = (int)(Math.random() * 401);
    myCenterY = (int)(Math.random() * 401);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (int)(Math.random() * 361);
  }
}
