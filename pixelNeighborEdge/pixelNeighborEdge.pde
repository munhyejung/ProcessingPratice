PImage img;
PImage destination;
int threshold;

void setup() {
  size(320,320);
  img = loadImage("cat.jpg");
  destination = createImage(img.width,img.height,RGB);
}

void draw() {
  img.loadPixels();
  destination.loadPixels();
  
  for(int x = 1; x<width ;x++ ){
    for(int y = 0; y<height;y++){
      
      int loc = x + y*img.width;
      color pix = img.pixels[loc];
      
      int leftLoc = (x-1)+y*img.width;
      color leftPix = img.pixels[leftLoc];
      
      float diff = abs(brightness(pix)-brightness(leftPix));
      destination.pixels[loc] = color(constrain(diff*20,0,255));
      
      
    }
  }
  
  
  destination.updatePixels();
  image(destination,0,0);
}
