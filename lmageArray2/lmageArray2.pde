int maxImages;
int imageIndex;
PImage[] images;

void setup() {
  size(200,200);
  
  maxImages = 6;
  imageIndex = 0;
  images = new PImage[maxImages];
  
  for(int i = 0;i<images.length; i++){
    images[i] = loadImage("cat"+ i + ".jpg");
  }
  frameRate(5);
  
}

void draw() {
  background(0);
  image(images[imageIndex],0,0);
  
  imageIndex = (imageIndex + 1) % images.length;
  
}
