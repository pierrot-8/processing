PVector p,q,r;
float t;
float v;

void setup(){
  size(400,400);
  t=0;
  p=new PVector(0,400);
  q=new PVector(400,0);
  r=new PVector(50,100);
  v=0.005;
}

float g(float t){
  return t*t*(3-2*t);
  //return t*t*+2*t+t*t;
}

float f(float t){
  return g(g(t));
}

void draw(){
  background(0);
  PVector x= PVector.add(PVector.mult(p,f(2-t)),PVector.mult(q,f(t)));
  ellipse(p.x,p.y,10,10);
  ellipse(q.x,q.y,10,10);
  //ellipse(x.x,x.y,10,10);
  t+=v;
  ellipse(x.x,x.y,10,10);
  if(t < 0 || 1<=t){
    v*=-1;
  }
}
