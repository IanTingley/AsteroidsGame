class Asteroid extends floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 7;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0;
    yCorners[0] = -10;
    xCorners[1] = -8;
    yCorners[1] = -4;
    xCorners[2] = -8;
    yCorners[2] = 4;
    xCorners[3] = 0;
    yCorners[3] = 10;
    xCorners[4] = 8;
    yCorners[4] = 4;
    xCorners[5] = 8;
    yCorners[5] = -4;
    xCorners[6] = 0;
    yCorners[6] = -10;
    myXspeed = Math.random()*4-2;
    myYspeed = Math.random()*4-2;
    myColor = color(60);
    myCenterX = (float)(Math.random()*600);
    myCenterY = (float)(Math.random()*600);
    myPointDirection = 0;
  }
  
  public void move(){
    turn(rotSpeed);
    super.show();
    super.move();
  }
  public boolean NearShip(){
    return((myCenterX >= KCR.getX()-10) && (myCenterX <= KCR.getX()+10) && (myCenterY >= KCR.getY()-10) && (myCenterY <= KCR.getY()+10));
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
