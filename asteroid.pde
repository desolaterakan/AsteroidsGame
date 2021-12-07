class Asteroid extends Floater {
  public Asteroid() {
    corners = 6;
    xCorners = new int[] {-11, 7, 10, 6, -13, -9};
    yCorners = new int[] {-8, -10, 0, 10, 8, 0};
    myColor = 0;
    myCenterX = 0;
    myCenterY = 0;
  }

  float getX() {
    return myCenterX;
  }
  
  float getY() {
    return myCenterY;
  }

private double Xspeed = Math.random() * 5 - 2.5;
private double Yspeed = Math.random() * 5 - 2.5;
private double rotSpeed = Math.random() * 10 - 5;
  public void move() {
    turn(rotSpeed);
    myCenterX += Xspeed;    
    myCenterY += Yspeed;     

    if(myCenterX > width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX < 0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY > height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }
}
