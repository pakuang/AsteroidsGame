class Star //note that this class does NOT extend Floater
{
  private int starX, starY, col;
  public Star(int x, int y){
    starX=x;
    starY=y;
   
  }
  public void show(){
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    point(starX,starY);
  }
}
