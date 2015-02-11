void setup(){
 size(300,300);
 background(255);
}


boolean isInsideCircle(float x,float y){
  float r=100;
   x-=150;
   y-=150;
  boolean a=(x*x+y*y)<r*r;
  return a;
}

void draw(){
 float x=random(width);
 float y=random(height);
 if(isInsideCircle(x,y)){
 point(x,y);
 }
}

