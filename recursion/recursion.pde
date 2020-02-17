void setup() {
  size(800,500);
}

void draw() {
  background(255);
  stroke(0);
  noFill();
  drawCircle(width/2,height/2,300);
}

// draw circle function
void drawCircle(float x, float y, float radius) {
  ellipse(x,y,radius,radius);
  if(radius > 2){
    //drawCircle call itself
    drawCircle(x + radius/2,y,radius/2);
    drawCircle(x - radius/2,y,radius/2);
  }
}
