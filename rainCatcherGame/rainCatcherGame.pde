Catcher catcher;
Timer timer;
Drop[] drops;
int totalDrops = 0;

void setup() {
  size(480,270);
  catcher = new Catcher(32);
  drops = new Drop[2000];
  timer = new Timer(300);
  timer.start();
}

void draw() {
  background(255);
  
  catcher.setLocation(mouseX,mouseY);
  catcher.display();
  
  if(timer.isFinished()){
    drops[totalDrops] = new Drop();
    totalDrops++;
    
    if(totalDrops >= drops.length) {
      totalDrops = 0;
    }
    timer.start();
    
  }
  
  for(int i =0; i<totalDrops; i++){
    drops[i].move();
    drops[i].display();
    if(catcher.intersect(drops[i])){
      drops[i].caught();
    }
  }
  
}
