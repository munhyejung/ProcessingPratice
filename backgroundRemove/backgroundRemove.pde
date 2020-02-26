import processing.video.*;

Movie movie;
color bgColor;
float threshold;

void setup() {
  fullScreen();
  threshold = 20;
  bgColor = color(255,255,0);
  
  movie = new Movie(this, "Background Removal.mp4");
  movie.loop();
}

void movieEvent(Movie movie){
  movie.read();
}

void draw() {
  loadPixels();
  movie.loadPixels();
  
  for(int x = 0;x<movie.width;x++) {
    for(int y = 0 ;y<movie.height;y++)  {
      int loc = x +y*movie.width;
      color fgColor = movie.pixels[loc];
      
      float r1 = red(fgColor);
      float g1 = green(fgColor);
      float b1 = blue(fgColor);
      float r2 = red(bgColor);
      float g2 = green(bgColor);
      float b2 = blue(bgColor);
      float diff = dist(r1, g1, b1, r2, g2, b2);
      
      if(diff<threshold){
        movie.pixels[loc] = color(0,255,0);
      }
    }
  }
  
  movie.updatePixels();
  image(movie,0,0,width,height);
}
