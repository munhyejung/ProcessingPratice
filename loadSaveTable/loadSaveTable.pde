Bubble[] bubbles;
Table table;

void setup() {
  size(480,300);
  loadData();
}

void draw() {
  background(255);
  for(int i = 0; i<bubbles.length;i++){
    bubbles[i].display();
    bubbles[i].rollover(mouseX,mouseY);
  }
  
  textAlign(LEFT);
  fill(0);
  text("Click to add bubbles",10,height-15);
}

void loadData() {
  table = loadTable("ta.csv","header");
  
  bubbles = new Bubble[table.getRowCount()];
  
  for(int i = 0;i<table.getRowCount();i++){
    TableRow row = table.getRow(i);
    float x = row.getFloat("x");
    float y = row.getFloat("y");
    float d = row.getFloat("diameter");
    String n = row.getString("name");
    bubbles[i] = new Bubble(x,y,d,n);
  }
}

void mousePressed() {
  TableRow row = table.addRow();
  row.setFloat("x",mouseX);
  row.setFloat("y",mouseY);
  row.setFloat("diameter",random(40,80));
  row.setString("name","Git");
  
  if(table.getRowCount()>10) {
    table.removeRow(0);
  }
  
  saveTable(table,"data/ta.csv");
  loadData();
  
}
