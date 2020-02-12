class Drop {

  float x,y;
  float speed;
  color c;
  float r;
  
  Drop() {
    r=6;
    x=random(width);
    y = -r*4;
    speed = random(width);
    c = color(50,100,150);
  }
  
  void move() {
    
    y += speed;
  }
  
  boolean reachedBotoom() {
  
    if(y>height + r*4){return true;}
      else {return false;}
  }
  
  void display() {
    fill(c);
    noStroke();
    ellipse(x,y,r*1.5,r*1.5);
  }
  
  void caught() {
  
    speed = 0;
    y = -1000;
  }
}
