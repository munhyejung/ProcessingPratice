character[] characters = new character[1];
float gravity = 0.1;

void setup(){
  size(500,500);
  characters[0] = new character(50,0);
}

void draw() {
  background(150);
  
  for(int i = 0 ; i<characters.length;i++){
    characters[i].gravity();
    characters[i].move();
    characters[i].display();
    
  }
}

void mousePressed() {
  character b = new character(mouseX,mouseY);
  characters = (character[]) append(characters,b);
}
