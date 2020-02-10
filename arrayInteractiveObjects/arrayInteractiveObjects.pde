Stripe[] stripes = new Stripe[10];

void setup(){
  size(480,270);
  for(int i = 0; i<stripes.length;i++){
    stripes[i] = new Stripe();
  }
}

void draw() {
  background(100);
  for(int i = 0 ; i<stripes.length;i++){
    stripes[i].rollover(mouseX,mouseY);
    stripes[i].move();
    stripes[i].display();
  }
}
