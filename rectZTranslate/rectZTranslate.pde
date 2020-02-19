float z = 0;

void setup() {
  size(200,200,P3D);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  
  translate(width/2, height/2, z);
  rectMode(CENTER);
  rect(0,0,8,8);
  
  z+=2;
  if(z>200) {
     z=0;
  }
  
}
