PFont f;

float r;
float w;
float h;

String message = "뭘봐이쪼랭이떡같은게";

void setup() {
  size(480,270);
  f = createFont("NanumBarunGothicUltraLight.ttf",16);
  
  r = 100;
  w = 40;
  h = 40;
}

void draw() {
  background(255);
  textFont(f);
  fill(0);
  
  translate(width/2,height/2);
  noFill();
  stroke(0);
  ellipse(0,0,r*2,r*2);
  
  int totalBoxes = 10;
  float arclength = 0;
  
  for(int i =0; i<totalBoxes; i++){
    arclength += w/2;
  
  float theta = arclength/r;
  
  pushMatrix();
  translate(r*cos(theta),r*sin(theta));
  rotate(theta);
  
  fill(0,100);
  rectMode(CENTER);
  rect(0,0,w,h);
  popMatrix();
  arclength += w/2;
  
  }
  
  for(int i =0; i<totalBoxes; i++){
    arclength += w/2;
  
  float theta = arclength/r;
  
  pushMatrix();
  translate(r*cos(theta),r*sin(theta));
  rotate(theta);
  
  text(message,,);
  popMatrix();
  arclength += w/2;
  }
}
