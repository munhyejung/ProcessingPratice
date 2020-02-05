

void setup( ) {
  size(480,270);
  background(255);
  noStroke();
  
  
}
  

void draw() {

  int y = height/2;
  
  for(int x = 80; x<width ; x +=80){
  
    //hair
    fill(234,79,70);
    rect(19 + x , 0,20,7);
    
    //body
    fill(250);
    rect(7 + x, 7, 42, 42);
    rect(7 + x, 49,65,42);
    
    //eye
    fill(27);
    rect(19 + x , 19,4,4);
    
    //wing
    fill(255);
    rect(22 + x , 55,40,26);
    
    //mou
    fill(234,79,70);
    rect(2 + x , 27,5,10);
    
    fill(238,112,62);
    rect(0 + x , 20,7,7);
    
    //leg
    fill(238,112,62);
    rect(37 + x , 91,6,19);
    rect(29 + x , 107,23,6);
  }
}
