Chicken myChicken;
Chicken myChicken2;
Chicken[] myChickenArr;

void setup() {
  size(1920,1080);
  //myChicken = new Chicken(width/2,height/2,3,1);
 // myChicken2 = new Chicken(width/2-100,height/2-100,5,3);

  myChickenArr = new Chicken[5];

  for(int i = 0; i<myChickenArr.length; i++) {
    myChickenArr[i] = new Chicken(width/2-100*i, height/2 - 100 * i, i*3, i*5);
  }

}

void draw() {
  background(240);  
  
  for(int i = 0; i<myChickenArr.length; i++) {
    myChickenArr[i].display();
    myChickenArr[i].move();
  }


/*
  myChicken.display();
  myChicken.move();

  myChicken2.display();
  myChicken2.move();
*/

}
