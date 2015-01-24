//circle radius
int c1rad = 30;
int c2rad = 100;
//position
float c1posx,c1posy;
float c2posx,c2posy;

float c1xspeed,c1yspeed;
float c2xspeed,c2yspeed;

int c1xdirection=1; 
int c1ydirection=1;
int c2xdirection=1;
int c2ydirection=1;
//color
float co1;
float co2;
float co3;
//distabce
float dist; 

void setup(){
  size(600,400);
  ellipseMode(RADIUS);
   c1posx = 100;
   c1posy = height/2;
   c2posx = 500;
   c2posy = height/2;

   c1xspeed = 2.8;
   c1yspeed = 2.2;
   c2xspeed = 2.8;
   c2yspeed = 2.2;

}

void draw(){
  background(255);
  
  c1posx = c1posx + (c1xspeed*c1xdirection);
  c1posy = c1posy + (c1yspeed*c1ydirection);
  c2posx = c2posx + (c2xspeed*c2xdirection);
  c2posy = c2posy + (c2yspeed*c2ydirection);
  
  if(c1posx > width-c1rad || c1posx < c1rad){
    c1xdirection *= -1;
  }
  if(c1posy > height-c1rad || c1posy < c1rad){
    c1ydirection *= -1;
  }
  if(c2posx > width-c2rad || c2posx < c2rad){
    c2xdirection *= -1;
  }
  if(c2posy > height-c2rad || c2posy < c2rad){
    c2ydirection *= -1;
  }
  
   dist = sqrt((c2posx-c1posx)*(c2posx-c1posx)+(c2posy-c1posy)*(c2posy-c1posy));
  if(dist < (c1rad+c2rad)){
     co1 = random(0,255);
     co2 = random(0,255);
     co3 = random(0,255);
    c1xdirection *=-1;
    c1ydirection *=-1;
    c2xdirection *=-1;
    c2ydirection *=-1;
  }
  
    fill(co1,co2,co3);
    ellipse(c1posx,c1posy,c1rad,c1rad);
    fill(200,0,200);
    ellipse(c2posx,c2posy,c2rad,c2rad);
  
}