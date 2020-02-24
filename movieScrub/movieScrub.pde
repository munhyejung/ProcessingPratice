import processing.video.*;

Movie movie;

void setup() {
  fullScreen();
  movie = new Movie(this,"phs2.mp4");
  movie.play();
}

void draw() {
  float ratio = mouseX/(float)width;
  
  movie.jump(ratio*movie.duration());
  movie.read();
  image(movie,0,0);
  
}
