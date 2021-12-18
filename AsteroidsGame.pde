//your variable declarations here
Spaceship bob= new Spaceship();
Star[] stars = new Star[250];

ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets =  new ArrayList<Bullet>();

float distance=0;

public void setup() 
{
  size(500,500);
  for(int i=0;i<=stars.length-1;i++){
    stars[i]=new Star((int)(Math.random()*width),(int)(Math.random()*height));
  }
 for(int i=0;i<=20;i++){
    asteroids.add(new Asteroid());
  }
}

public void draw() 
{
  background(0);
  
  for(int i=0;i<=stars.length-1;i++){
    stars[i].show();
  }
  
  for(int i=0;i<=bullets.size()-1;i++){
    bullets.get(i).move();
    bullets.get(i).show();
  }
  for(int i=0;i<=asteroids.size()-1;i++){
    asteroids.get(i).move();
    asteroids.get(i).show();
    /*
    distance=dist((float)asteroids.get(i).getX(),(float)asteroids.get(i).getY(),(float)bob.getX(),(float)bob.getY());
    if(distance<20)asteroids.remove(i);
    */
  }
  bob.show();
  bob.move();
  for(int i=0;i<bullets.size();i++){
    for(int j=0;j<=asteroids.size()-1;j++){
      float distance=dist((float)asteroids.get(j).getX(),(float)asteroids.get(j).getY(),(float)bullets.get(i).getX(),(float)bullets.get(i).getY());
    if(distance<10){
      asteroids.remove(j);
      bullets.remove(i);
      break;
    }
    }
    
  }
  
}
public void keyPressed(){
  if(key == 'w') bob.turn(-10);
  else if(key == 's') bob.turn(10);
  
  else if(key == 'd') bob.accelerate(0.2);
  else if(key == 'a'){
  bob.brake();
  bob.accelerate(-0.0001);
  }
  
  else if(key == 'z') bob.hyperspace();
  else if(key == ' ') bullets.add(new Bullet(bob));
  
}
