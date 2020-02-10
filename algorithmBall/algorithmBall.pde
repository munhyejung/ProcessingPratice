Ball ball1;
Ball ball2;

void setup() {
  size(480,270);
  
  ball1 = new Ball(64);
  ball2 = new Ball(32);
  
}

void draw() {
  background(255);
  
  ball1.move();
  ball2.move();
  
  ball1.display();
  ball2.display();
}
