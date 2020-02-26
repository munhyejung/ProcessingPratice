import processing.video.*;

int videoScale;
int cols, rows;

Capture video;

void setup() {
  fullScreen();
  videoScale = 8;
  
  cols = width / videoScale;
  rows = height / videoScale;
  video = new Capture(this,80,60);
  video.start();
}

void captureEvent(Capture video){
  video.read();
}

void draw() {
  video.loadPixels();
  
  for(int i = 0 ; i<cols;i++) {
    for(int j =0;j<rows;j++){
      int x = j * videoScale;
      int y = j * videoScale;
      
      color c = video.pixels[i+j*video.width];
      fill(c);
      stroke(0);
      rect(x,y,videoScale,videoScale);
    }
  }
}
