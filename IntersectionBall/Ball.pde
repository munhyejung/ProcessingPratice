class Ball {
  
  float r;
  float x,y;
  float xspeed, yspeed;
  color c = color(100,50);
  
  Ball(float tempR) {
    r =tempR;
    x = random(width);
    y =random(height);
    xspeed = random(-5,5);
    yspeed = random(-5,5);
  }
  
  //bouncing
  void move(){
    x += xspeed;
    y += yspeed;
    
    if(x>width || x<0) {xspeed *= -1;}
    if(y>height || y<0) {yspeed *= -1;}
    
  }
  
  //the color is darkened
  void highlight() {
    c =color(0,150);
  }
  
  //ball
  void display() {
    stroke(0);
    fill(c);
    ellipse(x, y, r*2, r*2);
    c=color(100,50);
  }
  
  //c1,c2 r1+r2>distance color change 
  boolean intersect(Ball b){
    float distance = dist(x,y,b.x,b.y);
    
    //compare R
    if(distance<r + b.r){
      return true;
    } else {return false; }
  }
  
}
