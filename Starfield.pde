
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX= 200;
    myY= 200;
    mySpeed = Math.random()*5;
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
    myX = myX + Math.cos (myAngle) * mySpeed;
    myY = myY + Math.sin (myAngle) * mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float) myY, 5, 5);
  }
}

class OddballParticle extends Particle
{
  OddballParticle(){
    myX= 200;
    myY= 200;
    mySpeed = Math.random()*2;
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*20), (int)(Math.random()*256));
  }
  void move()
  {
    myX = myX + Math.cos (myAngle);
    myY = myY + Math.sin (myAngle);
  }
  void show()
  {
    fill(myColor);
    rect((float)myX, (float) myY, 8, 8);
  }
}
Particle [] parts = new Particle [1000];

void setup(){
  size (400, 400);
  noStroke();
  for (int x=0; x<parts.length; x++){
    parts[x] = new Particle();
  }
  for (int x=0; x<20; x++){
    parts [x] = new OddballParticle();
  }
}

void draw (){
  background (0);
  for (int x=0; x<parts.length; x++){
    parts[x].move();
    parts[x].show();
  }
}
