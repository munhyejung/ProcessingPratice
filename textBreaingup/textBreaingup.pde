PFont f;
String message = "누르면 흔들림 (흔들흔들)";

Letter[] letters;

void setup() {
  size(480,270);
  f = createFont("NanumBarunGothicUltraLight.ttf",16);
  textFont(f);
  
  letters = new Letter[message.length()];
  
  int x = 125;
  int y = 125;
  for(int i = 0; i<message.length(); i++){
    letters[i] = new Letter(y,140,message.charAt(i));
    y += textWidth(message.charAt(i));
  }
}

void draw() {
  background(255);
  for(int i = 0; i<letters.length;i++){
    letters[i].display();
    
    if(mousePressed){
      letters[i].shake();
    } else {
      letters[i].home();
    }
  }
}
