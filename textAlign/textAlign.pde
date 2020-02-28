PFont f;

void setup() {
  size(480,270);
  f = createFont("NanumBarunGothicUltraLight.ttf",16);
}

void draw() {
 background(255);
 stroke(175);
 line(width/2,0,width/2,height);
 textFont(f);
 fill(0);
 
 textAlign(CENTER);
 text("한글 보고싶다",width/2,100);
 textAlign(LEFT);
 text("뭘 봐 이 조랭이떡 같은게",width/2,170);
 textAlign(RIGHT);
 text("영어 쓰는 놈들이 뭘  알아!",width/2,240);
 
}
