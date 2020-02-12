Catcher catcher;
Timer timer;
Drop[] drops ;
int totalDrops = 0;

void setup() {
  size(480,270);
  catcher = new Catcher(32);
  drops = new Drop[2000];
  timer = new Timer(2000);
  timer.start();
}

void draw() {
  background(255);
  
  catcher.setLocation(mouseX,mouseY);
  catcher.display();
  
  if(timer.isFinished()) {
    println("2 seconds have passed!");
    timer.start();
  }
  
  drops[totalDrops] = new Drop();
  totalDrops++;
  
  if(totalDrops >= drops.length){
    totalDrops = 0;
  }
  
  for(int i = 0 ; i <totalDrops; i++){
    drops[i].move();
    drops[i].display();
  }
  
}