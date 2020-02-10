class character {
  float x;
  float y;
  float speed;

  character(float tempX, float tempY){
    x = tempX;
    y = tempY;
    speed = 0;
  }
  
  void gravity() {
    speed += gravity;
  }
  
  void move() {
    y += speed;
    if(y>height){
      speed *= -0.95;
      y = height;
    }
  }
  
  void display() {
    fill(101);
    noStroke();
    
    //hair
    fill(234,79,70);
    rect(19 + x , 0 + y ,20,7);
    
    //body
    fill(250);
    rect(7 + x, 7 + y, 42, 42);
    rect(7 + x, 49 + y,65,42);
    
    //eye
    fill(27);
    rect(19 + x , 19 + y,4,4);
    
    //wing
    fill(255);
    rect(22 + x , 55 + y,40,26);
    
    //mou
    fill(234,79,70);
    rect(2 + x , 27 + y,5,10);
    
    fill(238,112,62);
    rect(0 + x , 20 + y,7,7);
    
    //leg
    fill(238,112,62);
    rect(37 + x , 91 + y,6,19);
    rect(29 + x , 107 + y,23,6);
    
  }

}
