/*
Basic Format of Class

class className {

  //Field,Member Variable
  //Just Define, Not Initialize
  int num;

  //Constrcutor
  //Initialize your Field in Constructor
  //Constructor's name must be same with ClassName
  //NEVER WRITE RETURN TYPE(e.g. void, int, float)
  className(param) { //Constructor }

  //Member Function
  void funcName(param) {...}
}
*/

/*
Subject

1. Make Draw Function to draw Chicken Character on the Screen
2. Make Move Function to move Chicken Character
3. If Chicken hits the border, it must be bounce.(Make this in Move Function)

4. Get Initial Position using Constructor
*/

class Chicken {
 //You can make Field/Member(In easy, Variable in Class) to store values
 //Each Instance has different Field Value
 //They are independent from each other instance.
  float x;
  float y;
  float xspeed;
  float yspeed;
  
  
  //If you need a value for instance
  //You can get value when you make instasnce
  //Using Constructor
  Chicken(float x, float y, float xspeed, float yspeed) {
    this.x = x;
    this.y = y;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
  }

  void display() {
    //Body
    fill(250);
    rect(x-42, y-42, 42, 42);
    rect(x-42, y, 65, 42);
    
    //eye
    fill(27);
    rect(x-30, y-30, 4, 4);  
    
    //wing
    fill(255);
    rect(x-30, y+5, 40, 26);
    
    //hair
    fill(234,79,70);
    rect(x-30, y-49, 20, 7);
    rect(x-48, y-22, 5, 10);
    
    //mouse
    fill(238,112,62);
    rect(x-50, y-29, 7, 7);
    
    //leg
    fill(238,112,62);
    rect(x-6, y+42, 6, 19);
    rect(x-15, y+58, 23, 6);

  }
  
  
  //You can make Member Function to do something with class
  void move() {
    x += xspeed;
    y += yspeed;

    if( x>width-23 || x<50 ) {xspeed *= -1;}
    if( y>height-64 || y<49) {yspeed *= -1;}
  }
  
}
