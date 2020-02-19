int maxImages;
int imageIndex;

PImage[] images;

void setup() {
  size(300,300);
  
  maxImages = 6;
  imageIndex = 0;
  images = new PImage[maxImages];
  
  for(int i = 0; i<images.length;i++ ){
    images[i] = loadImage("cat"+i+".jpg");
  }
  
}

void draw() {
  image(images[imageIndex],0,0,width,height);
}

void mousePressed() {
  imageIndex = int(random(images.length));
}
