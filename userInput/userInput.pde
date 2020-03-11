PFont f;

String typing = "";
String saved = "";

void setup() {
  size(480,270);
  f = createFont("NanumBarunGothicUltraLight.ttf",16);
}

void draw() {
  background(255);
  int x = 25;
  
  textFont(f);
  fill(0);
  
  text("글씨 써 라",x,40);
  text("입력:" + typing,x,190);
  text("출력:" + saved,x,230);
  
}

void keyPressed() {
  if(key == '\n'){
    saved = typing;
    typing = "";
  } else {
    typing = typing + key;
  }
}
