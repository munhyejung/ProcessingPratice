class Letter {
  char letter;
  
  float homex, homey;
  float x,y;
  float shakeCount = 0;
  
  Letter(float xthis, float ythis, char letterthis) {
    homex = x = xthis;
    homey = y = ythis;
    letter = letterthis;
  }
  
  void display() {
    fill(0);
    textAlign(LEFT);
    text(letter,x,y);
  }
  
  void shake() {
    //x += random(-2,2);
    y = homey + random(-2*shakeCount,2*shakeCount);
    shakeCount++;
  }
  
  void home() {
    x = homex;
    y = homey;
    shakeCount = 0;
  }
  
}
