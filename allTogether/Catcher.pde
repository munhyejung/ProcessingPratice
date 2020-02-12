class Catcher {

  float r;
  float x,y;
  
  Catcher(float tempR) {
    r = tempR;
    x = 0;
    y = 0;
  }
  
  void setLocation(float tempX,float tempY) {
    x = tempX;
    y = tempY;
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(x,y, r*1.8,r*1.8);
  }
  
}
