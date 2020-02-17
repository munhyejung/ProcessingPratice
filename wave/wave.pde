//angle
float theta = 0;

void setup() {
  size(480,270);
}

void draw() {
  background(255);
  
  theta += 0.02;
  
  noStroke();
  fill(0);
  float angle = theta;
  
  //x location plus
  for(int x = 0 ; x <= width; x += 10) {
    
    //y loation Trigonometric
    float y = map(sin(angle),-1,1,0,height);
    ellipse(x,y,16,16);
    angle += 0.1;
  }
  
}
