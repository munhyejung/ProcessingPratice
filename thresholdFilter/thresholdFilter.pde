PImage img;

void setup() {
  size(512,288);
  img = loadImage("cat.jpg");
  
}

void draw() {
  image(img,0,0);
  filter(THRESHOLD,0.5);
}
