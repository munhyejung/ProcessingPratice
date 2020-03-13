String name;
String runningtime;
PImage poster;

void setup() {
  size(300,350);
  loadData(); 
}

void draw() {
  background(255);
  
  //image(poster,10,10,164,250);
  fill(0);
  text(name,10,300);
  text(runningtime,10,320);
  
}

void loadData() {
  String url = "https://www.imdb.com/title/tt6751668/";
  String[] lines = loadStrings(url);
  
  for(int i = 0; i<lines.length; i++) {
    println(lines[i]); 
  }
  
  String html = join(lines,"");
  
  String start = "<h1 class=\"\">";
  String end = "&nbsp;<span id=\"titleYear\">";
  name = giveMeTextBetween(html,start,end);
  
  start = "<time datetime=\"PT132M\">                        ";
  end = "                    </time>";
  runningtime = giveMeTextBetween(html,start,end);

}


String giveMeTextBetween(String s,String before,String after) {
    
  int startIndex = s.indexOf(before);
  if( startIndex == -1 ) { return "";}
  startIndex += before.length();
  
  int endIndex = s.indexOf(after,startIndex);
  if(endIndex == -1){ return "";}
  
  return s.substring(startIndex,endIndex);
  
}
