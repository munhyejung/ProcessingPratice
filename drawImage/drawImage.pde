PImage img;

void setup() {
  size(325,530);
  
  img = loadImage("efd580a1e791338fea095fd4a3a59140.jpg");
}

void draw() {
  background(0);
  imageMode(CENTER);
  image(img,width/2,height/2,width/2,height/2);
}
