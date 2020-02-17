int cols;
int rows;
int[][] myArray;

void setup() {

  size(200,200);
  cols = width;
  rows = height;
  //2darray
  myArray = new int[cols][rows];

}


void draw() {

  for(int i = 0; i<cols;i++){
    for(int j = 0 ;j<rows;j++){
      myArray[i][j] = int(random(255));
  }
}
  //draw point
  //double for loop 
  //point var change
  for(int i = 0; i<cols; i++){
    for(int j =0; j<rows; j++){
      stroke(myArray[i][j]);
      point(i,j);
    }
  }
}
