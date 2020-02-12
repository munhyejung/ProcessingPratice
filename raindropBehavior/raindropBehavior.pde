Drop[] drops = new Drop[2000];

int totalDrops = 0 ;

void setup() {
  
  size(480,270);
  
}

void draw() {
  
  background(255);
  
  drops[totalDrops] = new Drop();
  totalDrops++;
  
  if(totalDrops >= drops.length) {
    totalDrops = 0;
  }
  
  for(int i = 0 ; i<totalDrops; i++){
    drops[i].move();
    drops[i].display();
  }
  
}
