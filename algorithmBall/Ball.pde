class Ball {
  
  float r;
  float x,y;
  float xspeed,yspeed;
  
  Ball(float tempR){
    r = tempR;
    x = random(width);
    y =random(height);
    xspeed = random(-5,5);
    yspeed = random(-5,5);
  }
  
  void move() {
    x += xspeed;
    y += yspeed;
    
    if(x>width || x<0){
      xspeed *= -1;
    }
      
    if(y>height||y<0){
      yspeed *= -1;
     }
   }
    
  void display() {
    
    stroke(0);
    fill(0,50);
    ellipse(x,y,r*2,r*2);
    
  }
  
}
