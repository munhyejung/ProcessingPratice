void setup() {
  size(480,480,P3D);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  translate(width/2,height/2);
  rotateX(map(mouseY,0,height,0,TWO_PI));
  rotateY(map(mouseX,0,width,0,TWO_PI));
  rectMode(CENTER);
  rect(0,0,200,150);
}
