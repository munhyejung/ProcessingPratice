PFont f;

void setup() {
  size(480,270);
  f = createFont("",16);
}

void draw() {
  background(255);
  fill(0);
  textFont(f);
  textAlign(CENTER);
}
