String[] headlines = {
  "뭘 봐 이 조랭이떡 같은게!",
  "조랭이떡 먹구싶다....",
  "떡국 조랭이떡으로 해줬으면 좋겠다",
  "몇년동안 말했는데,,,,",
};

PFont f;
float x;
int index;

void setup() {
  size(480,270);
  f = createFont("NanumBarunGothicUltraLight.ttf",16);
  
  x = width;
  index = 0;
  
}

void draw() {
  background(255);
  fill(0);
  
  textFont(f,16);
  textAlign(LEFT);
  
  text(headlines[index],x,height-20);
  
  x -= 3;
  
  float w = textWidth(headlines[index]);
  if (x<-w){
    x = width;
    index = (index + 1) % headlines.length;
  }
  
  
}
