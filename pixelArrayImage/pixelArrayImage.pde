PImage img;
int threshold;

void setup() {
  size(750,1334);
  threshold = 11;
  img = loadImage("efd580a1e791338fea095fd4a3a59140.jpg");
}

void draw() {
  loadPixels();

  // We must also call loadPixels() on the PImage since we are going to read its pixels.
  img.loadPixels();
  for (int y = 0; y < height; y++ ) {
    for (int x = 0; x < width; x++ ) {
      int loc = x + y*width;
      // The functions red(), green(), and blue() pull out the three color components from a pixel.
      int r = (int)red(img.pixels [loc]); 
      int g = (int)green(img.pixels[loc]);
      int b = (int)blue(img.pixels[loc]);

      // Image Processing would go here
      // If we were to change the RGB values, we would do it here, before setting the pixel in the display window.


      if(r >= 232-threshold && r<=232+threshold && g >= 224-threshold && g <= 224+threshold && b >= 239-threshold && b <= 239+threshold) {
         img.pixels[loc] = color(255,255,255); 
      }
    }
  }

  img.updatePixels();
  image(img,0,0,width,height);
}
