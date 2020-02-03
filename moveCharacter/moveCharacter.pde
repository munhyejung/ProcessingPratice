float x = 50;
float y = 50;

float xspeed = 3;
float yspeed = 1;

void setup(){
  size(480,270);
  background(200);
  
  noStroke();
}

  
void draw() {
  background(200);
  
  x += xspeed;
  y += yspeed;
  
  if( x>width-23 || x<50 ) {
    xspeed *= -1;
  }
  
  if( y>height-64 || y<49) {
    yspeed *= -1; 
  }
  
  /*
  //body
  fill(250);
  rect(7, 7, 42, 42);
  rect(7, 49,65,42);
  
  //eye
  fill(27);
  rect(19, 19,4,4);
  
  //wing
  fill(255);
  rect(22, 55,40,26);
  
  //mou
  fill(234,79,70);
  rect(19, 0,20,7);
  rect(2, 27,5,10);
  
  //leg
  fill(238,112,62);
  rect(0, 20,7,7);
  rect(37, 91,6,19);
  rect(29, 107,23,6);
  */
  
  //Body
  fill(250);
  rect(x-42,y-42,42,42);
  rect(x-42,y,65,42);
  
  //eye
  fill(27);
  rect(x-30,y-30,4,4);  
  
  //wing
  fill(255);
  rect(x-30, y+5,40,26);
  
  //hair
  fill(234,79,70);
  rect(x-30,y-49,20,7);
  rect(x-48,y-22,5,10);
  
  //mouse
  fill(238,112,62);
  rect(x-50, y-29,7,7);
  
  //leg
  fill(238,112,62);
  rect(x-6,y+42,6,19);
  rect(x-15,y+58,23,6);

  



}
