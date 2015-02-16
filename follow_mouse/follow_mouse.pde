float x,y;
float vx,vy;

void setup()
{
  size(500,500);
  vx=vy=0;
}

void draw()
{ 
  mouseXY();
  Back();
}

void mouseXY()
{
  vx=0.05*(mouseX-x);
  vy=0.05*(mouseY-y);
  x+=vx;
  y+=vy;
  ellipse(x,y,60,60);
  fill(100,100,100,10);
}
void Back(){
  rect(0,0,width,height);
  fill(255);
}
