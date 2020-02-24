import processing.video.*;

Movie movie;

void setup() {
  fullScreen();
   //size(1920,1080);
   
   movie = new Movie(this, "phs2.mp4");
   
   movie.loop();
   
}

void movieEvent(Movie movie){
  movie.read();
}

void draw() {
   image(movie,0,0);
}
