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
    myColor = color(150);
    myCenterX = 300;
    myCenterY = 300;
    myPointDirection = 0; 
  }
  
}
