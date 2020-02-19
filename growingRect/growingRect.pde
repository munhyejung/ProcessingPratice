float r;

void setup() {
  size(200,200);
  r = 8;
}

void draw() {
  background(255);
  
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(width/2, height/2,r,r);
  
  r++;
  
  if(r>width){
    r = 0;
  }
  
}
