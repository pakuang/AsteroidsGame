class Asteroid extends Floater{
  private double rotSpeed;
 
  Asteroid(){
    myCenterX=myCenterY= Math.random()*width;
    corners = 6;
    xCorners =  new int[]
      {0+(int)Math.random()*(5+5)-5,9,7+(int)Math.random()*(3)-2,-5,-15,-9};
    yCorners = new int[]
      {16+(int)Math.random()*(2)-1,9+(int)Math.random()*(2)-1,
      -2,-9+(int)Math.random()*(5+5)-5,-2,12};
    myYspeed = myXspeed = Math.random()*(5+5)-5;
    myPointDirection=0;
    myColor = color(100);
    rotSpeed =  Math.random()*(5+5)-5;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
