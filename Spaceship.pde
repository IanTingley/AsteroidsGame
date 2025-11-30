class Spaceship extends floater  
{   
  Spaceship(){
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8+(int)myCenterX;
    yCorners[0] = -8+(int)myCenterY;
    xCorners[2] = -8+(int)myCenterX;
    yCorners[2] = 8+(int)myCenterY;
    xCorners[1] = 16+(int)myCenterX;
    yCorners[1] = 0+(int)myCenterY;
    xCorners[3] = -8+(int)myCenterX;
    yCorners[3] = -8+(int)myCenterY;
    myXspeed = 0;
    myYspeed = 0;
    myColor = color(100,0,0);
    myCenterX = 300;
    myCenterY = 300;
    myPointDirection = 0; 
  }
  public void hyperspace(){
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myXspeed= 0;
    myYspeed = 0;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
