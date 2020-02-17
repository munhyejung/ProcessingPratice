Cell[][] grid;

int cols = 32;
int rows = 18;

void setup() {
  size(320,180);
  grid = new Cell[cols][rows];
  
  for(int i = 0; i <cols; i++) {
    for(int j = 0;j<rows;j++){
      grid[i][j] = new Cell(i*10,j*10,10,10,i+j);
    }
  }
}

void draw() {
  background(0);
  
  for(int i = 0; i<cols;i++){
    for(int j = 0; j<rows; j++){
      grid[i][j].oscillate();
      grid[i][j].display();
    }
  }
}
