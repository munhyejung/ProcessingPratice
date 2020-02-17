float theta = QUARTER_PI;
float speed = 0.05;

void setup() {
  size(480,270);
}

void draw() {
  background(255);
  
  float x = (sin(theta)+1) * width/2;
  float y = (cos(theta)+1) * height/2;
  
  
  if(theta > QUARTER_PI || theta < -QUARTER_PI) {
    speed *= -1;
  }
     
  theta += speed;
  
  
  fill(0);
  stroke(0);
  line(width/2,0,x,y);
  ellipse(x,y,32,32);
  
}
