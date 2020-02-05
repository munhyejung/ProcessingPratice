int x;
int speed = 1;

void setup() {
  size(480,270);
  
  x = 0;
  
}

void draw() {
  background(255);
  /*
  background(255);
  drawBlackCircle();
  */
  
  move();
  bounce();
  display();
  
}
/*
void drawBlackCircle() {
  fill(0);
  ellipse(50,50,20,20);
}
*/
void move() {
  x += speed;
}

void bounce() {
  if(x>width || (x<0)){
    speed *= -1;
  }
}

void display(){
  stroke(0);
  fill(175);
  ellipse(x,height/2,32,32);
}
