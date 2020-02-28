PFont f;

void setup() {
  size(480,270);
  
  f = createFont("NanumBarunGothicUltraLight.ttf",16);
}

void draw() {
  background(255);
  textFont(f,50);
  fill(0);
  
  text("한글 좀 먹어라아아)",50,height/2);
}
