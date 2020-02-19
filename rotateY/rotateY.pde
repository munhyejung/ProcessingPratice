float theta;

void setup() {
  size(200,200,P3D);
  theta = 0.0;
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  translate(width/2,height/2);
  rotateY(theta);
  rectMode(CENTER);
  rect(0,0,100,100);
  theta += 0.02;
}
