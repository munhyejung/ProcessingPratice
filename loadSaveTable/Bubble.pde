class Bubble {
  float x,y;
  float diameter;
  String name;
  
  boolean over = false;
  
  Bubble(float xthis,float ythis,float diameterthis,String s) {
    x = xthis;
    y = ythis;
    diameter = diameterthis;
    name = s;
  }
  
  void rollover(float px, float py) {
    float d = dist(px,py,x,y);
    if (d<diameter/2) {
      over =true;
    } else {
      over = false;
    }
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    noFill();
    ellipse(x,y,diameter,diameter);
    if(over){
      fill(0);
      textAlign(CENTER);
      text(name,x,y+diameter/2+20);
    }
  }
  
}
