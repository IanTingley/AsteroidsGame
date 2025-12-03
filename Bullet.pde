class Bullet extends floater{
  public Bullet(){
    myColor = color(0,150,0);
    myCenterX = KCR.getX();
    myCenterY = KCR.getY();
    myPointDirection = KCR.getDirection();
    myXspeed = KCR.getXspeed();
    myYspeed = KCR.getYspeed();
    accelerate(8.0);
  }


  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public void show(){
    fill(myColor);   
    stroke(myColor); 
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
