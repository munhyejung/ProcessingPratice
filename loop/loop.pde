void setup() {
  size(1000,270);
  
}

void draw() {
  background(255);
  
  int i = 0;
  
  while(i<width){
    noStroke();
    
    //거리가 가까워지면 어두워지고 멀어지면 밝아짐
    float distance = constrain(abs(mouseX - i),0,255);
    fill(distance);
    rect(i,0,10,height);
    i += 10;
  }
  
}
