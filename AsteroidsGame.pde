//your variable declarations here
Spaceship bob= new Spaceship();
Star[] stars = new Star[250];

public void setup() 
{
  size(500,500);
  for(int i=0;i<=stars.length-1;i++){
    stars[i]=new Star((int)(Math.random()*width),(int)(Math.random()*height));
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i=0;i<=stars.length-1;i++){
    stars[i].show();
  }
}
public void keyPressed(){
  if(key == 'w') bob.turn(-10);
  if(key == 's') bob.turn(10);
  
  if(key == 'd') bob.accelerate(0.2);
  if(key == 'a') bob.accelerate(-0.2);
  
  if(key == 'z') bob.hyperspace();
  
}
