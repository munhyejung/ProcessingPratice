PImage img;
int rad;

void setup() {
  size(1193,728);
  img = loadImage("cat.jpg");
  rad = 30;
}

void draw() {
  background(0);
  loadPixels();
  img.loadPixels();
  
  for(int x = 0; x<img.width;x++){
    for(int y= 0;y<img.height;y++){
      int loc = x + y*img.width;
      
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      float dist = dist(mouseX,mouseY,x,y);
      
      r = constrain(r,0,255);
      g = constrain(g,0,255);
      b = constrain(b,0,255);
      
      if(rad > dist ){
        pixels[loc] = color(r,g,b);
      }
      else { pixels[loc] = color(0);}
      
      
    }
  }
  updatePixels();
}
