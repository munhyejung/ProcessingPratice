class Rotater {
  
  float x,y;
  float theta;
  float speed;
  float w;
  
  Rotater(float tempX,float tempY, float tempSpeed, float tempW) {
    x = tempX;
    y = tempY;
    theta = 0;
    speed = tempSpeed;
    w = tempW;
  }
  
  
  void spin() {
    theta += speed;
  }
  
  void display() {
    rectMode(CENTER);
    stroke(0);
    fill(0,100);
    
    pushMatrix();
    translate(x,y);
    rotate(theta);
    rect(0,0,w,w);
    popMatrix();
    
  }
  
}
