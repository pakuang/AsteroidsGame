class Bullet extends Floater{
  Bullet(Spaceship theShip){
    myCenterX= theShip.getX();
    myCenterY=theShip.getY();
    myXspeed= theShip.getXspeed();
    myYspeed= theShip.getYspeed();
    myPointDirection=theShip.getMyPointDirection();
    accelerate(6.0);
  }
  public void show(){
    fill(0,0,255);
    noStroke();
    ellipse((float)myCenterX,(float)myCenterY,6,6);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  }
  public double getX(){
    return myCenterX;
  }
    public double getY(){
    return myCenterY;
  }
  
}
