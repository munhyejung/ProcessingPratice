PImage img;
PImage destination;
int r;

void setup() {
  size(320,320);
  img = loadImage("cat.jpg");
  destination = createImage(img.width,img.height,RGB);
  r = 15;
}

void draw() {
  img.loadPixels();
  destination.loadPixels();
  
  int x = (int)random(width);
  int y = (int)random(height);
  
  int loc = x + y*img.width;
  color pix = img.pixels[loc];
  
  noStroke();
  fill(pix);
  ellipse(x,y,r,r);
  
}
