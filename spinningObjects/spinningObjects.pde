Rotater[] rotaters;

void setup() {
  size(480,270);
  
  rotaters = new Rotater[20];
  
  for(int i = 0 ; i<rotaters.length; i++) {
    rotaters[i] = new Rotater(random(width),random(height),random(-0.1,0.1),random(48));
  }
  
}

void draw() {
  background(255);
  
  for(int i = 0;i<rotaters.length; i++){
    rotaters[i].spin();
    rotaters[i].display();
  }
  
}
