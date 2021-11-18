class Spaceship extends Floater  
{    
    public Spaceship(){
      myCenterX= (int)(Math.random()*(width));
      myCenterY= (int)(Math.random()*(height));
      myXspeed= Math.random()*(2)-1;
      myYspeed= Math.random()*(2)-1;
      myPointDirection= 0;
      corners= 3;
      xCorners= new int[corners];
      yCorners= new int[corners];
      xCorners[0]= -8;//(int)myCenterX-8;
      xCorners[1]=16;//(int)myCenterX+16;
      xCorners[2]=-8;//(int)myCenterX-8;
      yCorners[0]=-8;//(int)myCenterY-8;
      yCorners[1]=0;//(int)myCenterY;
      yCorners[2]=8;//(int)myCenterY+8;
      myColor= color(255);
    }
    public void hyperspace(){
      myXspeed=0;
      myYspeed=0;
      myCenterX= (int)(Math.random()*(width));
      myCenterY= (int)(Math.random()*(height));
      myPointDirection= (int)(Math.random()*360);
    }
    public void brake(){
      myXspeed*=0.99;
      myXspeed*=0.99;
    }
   
}
