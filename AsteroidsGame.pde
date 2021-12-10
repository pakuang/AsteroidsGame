//your variable declarations here
Spaceship bob= new Spaceship();
Star[] stars = new Star[250];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
float distance=0;

public void setup() 
{
  size(500,500);
  for(int i=0;i<=stars.length-1;i++){
    stars[i]=new Star((int)(Math.random()*width),(int)(Math.random()*height));
  }
 for(int i=0;i<=100;i++){
    asteroids.add(new Asteroid());
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
  for(int i=0;i<=asteroids.size()-1;i++){
    asteroids.get(i).move();
    asteroids.get(i).show();
    
    distance=dist((float)asteroids.get(i).getX(),(float)asteroids.get(i).getY(),(float)bob.getX(),(float)bob.getY());
    if(distance<20)asteroids.remove(i);
  }
  
  
}
public void keyPressed(){
  if(key == 'w') bob.turn(-10);
  if(key == 's') bob.turn(10);
  
  if(key == 'd') bob.accelerate(0.2);
  if(key == 'a'){
  bob.brake();
  bob.accelerate(-0.0001);
  }
  
  if(key == 'z') bob.hyperspace();
  
}
