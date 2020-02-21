void setup() {
  size(200,250);
}

void draw() {
  loadPixels();
  for(int i= 0; i<pixels.length; i++) {
    
     float rand = random(255);
     color c = color(rand);
     pixels[i] =c;
     
  }
  updatePixels();
}
