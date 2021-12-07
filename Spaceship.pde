class Spaceship extends Floater {
  public Spaceship() {
    corners = 4;
    xCorners = new int[] {-8, 16, -8, -2};
    yCorners = new int[] {-8, 0, 8, 0};
    myColor = 0;
    myCenterX = 200;
    myCenterY = 200;
    myXspeed = 1;
    myYspeed = 1;
    myPointDirection = 0;
  }
  
  float getX() {
    return myCenterX;
  }
  
  float getY() {
    return myCenterY;
  }
  
  public void hyper() {
    myCenterX = (float)(Math.random() * 401);
    myCenterY = (float)(Math.random() * 401);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random() * 361;
  }
}
