class Drop {
  
  float x,y;
  float speed;
  float r;
  color c;
  
  Drop() {
    r = 6;
    x = random(width);
    y = -r*4;     
    speed = random(1, 5); 
    c = color(50, 100, 150);
  }
  
  void move() { 
    y += speed; 
  }
  
    
  boolean reachedBottom() {
    if(y>height +r*4){
      return true;
    } else {
      return false;
    }
  }
  
  void display() {
    fill(c,130);
    noStroke();
      ellipse(x,y,5,15);
  }
  
  void caught() {
    speed = 0;
    y = -1000;
  }
  
}
